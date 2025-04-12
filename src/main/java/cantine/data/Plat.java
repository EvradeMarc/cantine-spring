package cantine.data;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.data.relational.core.mapping.MappedCollection;

import cantine.dao.DaoIngredient;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode( of = { "idPlat" } )
public class Plat {
	

	// -------
	// Champs
	// -------
	

	@Id
	private Long		idPlat;
	private String		nom;
	private int			nbPersonnes;
	private BigDecimal	cout;
	private Long		idTypePlat;
	
	 @MappedCollection( idColumn = "id_plat" )
	 private Set<PlatIngredient> platIngredients = new HashSet<>();
	
	@Transient
	private  TypePlat typePlat;
	
	@Transient
	 private List<PlatIngredient> listPlatIngredients = new ArrayList<>();
	
	public void updatePlatIngredients( DaoIngredient daoIngredient ) {
		
		for(PlatIngredient item : platIngredients) {
			item.setIngredient(daoIngredient.findById(item.getIdIngredient()).get());
		}
		
		 listPlatIngredients.clear();
		 listPlatIngredients.addAll( platIngredients );
		 
		 Collections.sort( listPlatIngredients );
		
	}

}
