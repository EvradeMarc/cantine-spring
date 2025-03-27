package cantine.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import cantine.data.Plat;

public interface DaoPlat extends CrudRepository<Plat, Long>, PagingAndSortingRepository<Plat, Long> {
	
	@Query("SELECT COUNT(*) FROM plat WHERE id_type_plat = :idTypePlat")
	public Long compterPourIdTypePlat(Long idTypePlat);
}
