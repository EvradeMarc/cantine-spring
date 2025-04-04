package cantine.data;

import java.math.BigDecimal;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode( of = { "idIngredient" } )
public class Ingredient {
	
	// -------
	// Champs
	// -------
	@Id
	private Long idIngredient;
	private String nom;
	private double quantiteStock;
	private BigDecimal prixUnitaire;
	private boolean perissable;
	private String stockage;
	private Long idUnite;
	
	@Transient
	private Unite unite;

}
