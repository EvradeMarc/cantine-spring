package cantine.data;

import org.springframework.data.annotation.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "idIngredient")
public class PlatIngredient {
	
	Long idIngredient;
	double quantite;
	
	@Transient
	Ingredient ingredient;
	

}
