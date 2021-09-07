package sangphpc00958_ProjectMini.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import sangphpc00958_ProjectMini.entity.Product;

public interface ProductService {

	List<Product> findAll();

	Product findById(Integer id);

	List<Product> findByCategoryId(String cid);

	Product create(Product product);

	Product update(Product product);

	void delete(Integer id);

	List<Product> findByPrice(Double price);

	List<Product> findByName(String name);

	Page<Product> findAvailable(Pageable pa);


}
