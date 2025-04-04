package cantine.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import cantine.data.Ingredient;

public interface DaoIngredient extends CrudRepository<Ingredient, Long>, PagingAndSortingRepository<Ingredient, Long> {
	
	@Query("SELECT COUNT(*) FROM ingredient WHERE id_unite = :idUnite")
	public Long compterPourIdUnite(Long idUnite);
	
	public Page<Ingredient> findByNomContainingIgnoreCase( String search, Pageable pageable );
	
	@Query("SELECT COUNT(*)=0 FROM ingredient WHERE nom = :nom  AND id_ingredient <> COALESCE( :id, 0)")
	public boolean verifierUniciteNom(String nom, Long id);
}

