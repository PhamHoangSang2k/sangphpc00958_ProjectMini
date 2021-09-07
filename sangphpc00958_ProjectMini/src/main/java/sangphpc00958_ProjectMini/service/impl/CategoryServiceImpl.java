package sangphpc00958_ProjectMini.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sangphpc00958_ProjectMini.dao.CategoryDao;
import sangphpc00958_ProjectMini.entity.Category;
import sangphpc00958_ProjectMini.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired CategoryDao cdao;
	
	@Override
	public List<Category> findAll() {
		return cdao.findAll();
	}

}
