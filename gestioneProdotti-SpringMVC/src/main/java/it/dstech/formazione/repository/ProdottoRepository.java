package it.dstech.formazione.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.CrudRepository;

import it.dstech.formazione.model.Prodotto;

public interface ProdottoRepository extends CrudRepository<Prodotto, Long> {
	
	@Query(value = "SELECT p FROM Prodotto p WHERE p.nome LIKE '%' || :keyword || '%'"
			+ " OR p.categoria LIKE '%' || :keyword || '%'"
			+ " OR p.quantità LIKE '%' || :keyword || '%'")
	public List<Prodotto> search(@Param("keyword") String keyword);
}
