package sangphpc00958_ProjectMini.service;

import java.util.List;

import sangphpc00958_ProjectMini.entity.Account;

public interface AccountService {

	Account findById(String username);

	List<Account> findAll();

	List<Account> getAdministrators();

	Account update(Account account);

	void delete(String username);

	Account create(Account account);
}
