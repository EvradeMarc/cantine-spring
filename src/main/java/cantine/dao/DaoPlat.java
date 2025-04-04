package cantine.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import cantine.data.Plat;

public interface DaoPlat extends CrudRepository<Plat, Long>, PagingAndSortingRepository<Plat, Long> {
	
	@Query("SELECT COUNT(*) FROM plat WHERE id_type_plat = :idTypePlat")
	public Long compterPourIdTypePlat(Long idTypePlat);
	
	public Page<Plat> findByNomContainingIgnoreCase( String search, Pageable pageable );
	
	@Query("SELECT COUNT(*)=0 FROM plat WHERE nom = :nom  AND id_plat <> COALESCE( :id, 0)")
	public boolean verifierUniciteNom(String nom, Long id);
}
