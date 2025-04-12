package cantine.data;

import java.math.BigDecimal;
import java.util.HashSet;
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
	
	public void updatePlatIngredients( DaoIngredient daoIngredient ) {
		
		for(PlatIngredient item : platIngredients) {
			item.setIngredient(daoIngredient.findById(item.getIdIngredient()).get());
		}
		
		
	}

}
