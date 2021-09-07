package sangphpc00958_ProjectMini.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import sangphpc00958_ProjectMini.entity.Account;
import sangphpc00958_ProjectMini.entity.Authority;

public interface AuthorityDao extends JpaRepository<Authority, Integer>{

	@Query("SELECT DISTINCT a FROM Authority a WHERE a.account IN ?1")
	List<Authority> authoritiesOf(List<Account> accounts);
}
