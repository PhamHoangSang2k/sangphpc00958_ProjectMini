package sangphpc00958_ProjectMini.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sangphpc00958_ProjectMini.dao.AccountDao;
import sangphpc00958_ProjectMini.entity.Account;
import sangphpc00958_ProjectMini.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired AccountDao adao;
	
	@Override
	public Account findById(String username) {
		return adao.findById(username).get();
	}

	@Override
	public List<Account> findAll() {
		return adao.findAll();
	}

	@Override
	public List<Account> getAdministrators() {
		return adao.getAdministrators();
	}

	@Override
	public Account create(Account account) {
		return adao.save(account);
	}

	@Override
	public Account update(Account account) {
		return adao.save(account);
	}

	@Override
	public void delete(String username) {
		adao.deleteById(username);
	}

}
