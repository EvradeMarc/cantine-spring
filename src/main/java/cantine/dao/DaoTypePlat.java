package cantine.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.lang.NonNull;

import cantine.data.TypePlat;

public interface DaoTypePlat extends CrudRepository<TypePlat, Long> {
	
	@Query( "SELECT * FROM type_plat order by rang asc" )
	@NonNull Iterable<TypePlat> findAll();
	
}
