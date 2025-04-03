package cantine.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.lang.NonNull;

import cantine.data.TypePlat;
import cantine.data.Unite;

public interface DaoUnite extends CrudRepository<Unite, Long> {
	
	@Query( "SELECT * FROM unite order by nom asc" )
	@NonNull Iterable<Unite> findAll();
	
}
