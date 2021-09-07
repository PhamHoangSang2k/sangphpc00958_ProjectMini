package sangphpc00958_ProjectMini.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sangphpc00958_ProjectMini.dao.RoleDao;
import sangphpc00958_ProjectMini.entity.Role;
import sangphpc00958_ProjectMini.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired RoleDao rdao;
	
	@Override
	public List<Role> findAll() {
		return rdao.findAll();
	}

}
