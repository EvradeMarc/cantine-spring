package cantine.data;

import org.springframework.data.annotation.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "idIngredient")
public class PlatIngredient implements Comparable<PlatIngredient>{
	
	Long idIngredient;
	double quantite;
	
	@Transient
	Ingredient ingredient;

	@Override
	public int compareTo( PlatIngredient o ) {
		
		 return this.ingredient.getNom().compareTo(  o.ingredient.getNom() );
	}
	

}
