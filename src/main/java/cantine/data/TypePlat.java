package cantine.data;

import org.springframework.data.annotation.Id;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "idTypePlat")
public class TypePlat {

	// -------
	// Champs
	// -------

	@Id
	private Long	idTypePlat;
	private String	nom;
	private int		rang;




}
