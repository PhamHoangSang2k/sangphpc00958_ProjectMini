package sangphpc00958_ProjectMini.service;

import java.util.List;

import sangphpc00958_ProjectMini.entity.Authority;

public interface AuthorityService {

	List<Authority> findAuthoritiesOfAdministrators();

	List<Authority> findAll();

	Authority create(Authority auth);

	void delete(Integer id);

}
