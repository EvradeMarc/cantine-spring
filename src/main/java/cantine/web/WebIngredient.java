package cantine.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cantine.dao.DaoIngredient;
import cantine.dao.DaoUnite;
import cantine.data.Ingredient;
import cantine.util.Alert;
import cantine.util.Paging;
import jakarta.annotation.security.RolesAllowed;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RolesAllowed( "ADMIN" )
@RequestMapping( "/ingredient" )
@SessionAttributes( "pagingIngredient" )
public class WebIngredient {

	// -------
	// Composants injectés
	// -------

	private final DaoIngredient		daoIngredient;
	private final DaoUnite		daoUnite;

	// -------
	// Attributs de session
	// -------

	@ModelAttribute
	public Paging getPaging( @ModelAttribute( "pagingIngredient" ) Paging paging ) {
		return paging;
	}

	// -------
	// Endpoints
	// -------

	// -------
	// listContent()

	@PostMapping( "/list/content" )
	public String getListContent( Paging paging, Model model ) {

		var page = getPage( paging );
		
		// Si la n° de page demandé est > au nombre total, on affiche la dernière page 
		if ( paging.getPageNum() > page.getTotalPages() && page.getTotalPages() > 0 ) {
			paging.setPageNum( page.getTotalPages() );
			page = getPage( paging );
		}

		model.addAttribute( "list", page.getContent() );
		model.addAttribute( "totalItems", page.getTotalElements() );
		model.addAttribute( "totalPages", page.getTotalPages() );
		return "ingredient/list :: #dynamic_view";

	}

	// -------
	// list() - GET
 
	@GetMapping( "/list" )
	public String list( Paging paging, Model model ) {
		getListContent( paging, model );
		return "ingredient/list";
	}

	// -------
	// list() - POST

	@PostMapping( "/list" )
	public String list() {
		return "redirect:/ingredient/list";
	}

	// -------
	// edit()

	@GetMapping( path = "/form" )
	public String edit( Long id, Model model ) {

		Ingredient item;
		if ( id == null ) {
			item = new Ingredient();
		} else {
			item = daoIngredient.findById( id ).get();
		}

		model.addAttribute( "item", item );
		model.addAttribute( "unites", daoUnite.findAll() );
		return "ingredient/form";

	}

	// -------
	// save()

	@PostMapping( "/form" )
	public String save( @ModelAttribute( "item" ) Ingredient item,BindingResult result, RedirectAttributes ra, Model model) {
		
		
		if(daoIngredient.verifierUniciteNom( item.getNom(), item.getIdIngredient() )) {
			daoIngredient.save( item );
			ra.addFlashAttribute( "alert", new Alert( Alert.Color.SUCCESS, "Mise à jour effectuée avec succès" ) );
			return "redirect:/ingredient/list";
		}else {
			model.addAttribute( "item", item );
			model.addAttribute( "unites", daoUnite.findAll() );
			result.rejectValue( "nom", "", "Ce nom est déjà utilisé" );
			//model.addAttribute( "alert", new Alert( Alert.Color.DANGER, "Ce nom est  déjà utilisé" ) );
			return "ingredient/form";
		}
	}

	// -------
	// delete()

	@PostMapping( "/delete" )
	public String delete( Long id, Paging paging, Model model ) {

		daoIngredient.deleteById( id );
		model.addAttribute( "alert", new Alert( Alert.Color.SUCCESS, "Suppression effectuée avec succès" ) );
		return getListContent( paging, model );

	}
	

	// -------
	// Méthodes auxiliaires
	// ------

	private Page<Ingredient> getPage( Paging paging ) {

		var pageable = PageRequest.of( paging.getPageNum() - 1, paging.getPageSize(), Sort.by( "nom" ));

		Page<Ingredient> page;
		String search = paging.getSearch();
		
		if(search.equals(""))
			page = daoIngredient.findAll( pageable );
		else
			page = daoIngredient.findByNomContainingIgnoreCase(search, pageable );

		return page;

	}

}
