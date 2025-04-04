package cantine.data;

import org.springframework.data.annotation.Id;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"idUnite"})
public class Unite {
	
	// -------
	// Champs
	// -------
	
	@Id
	private Long idUnite;
	private String nom;
	private String abrev;

}
