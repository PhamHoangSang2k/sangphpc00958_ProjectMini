package sangphpc00958_ProjectMini.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sangphpc00958_ProjectMini.entity.Product;
import sangphpc00958_ProjectMini.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping("/product/list")
	public String list(Model m, @RequestParam("p") Optional<Integer> p) {
		try {
			Pageable pa = PageRequest.of(p.orElse(0), 6);
			Page<Product> list = productService.findAvailable(pa);
			int t = list.getTotalPages();
			if (list.getNumber() == t) {
				return "redirect:/product/list?p=0";
			}
			m.addAttribute("items", list);
		} catch (Exception e) {
			return "redirect:/product/list?p=0";
		}
		return "product/list";
	}

	@RequestMapping("/product/listsp")
	public String listsp(Model m, @RequestParam("cid") Optional<String> cid) {
		List<Product> list = productService.findByCategoryId(cid.get());
		m.addAttribute("items", list);
		return "product/listsp";
	}

	@RequestMapping("/product/detail/{id}")
	public String detail(Model m, @PathVariable("id") Integer id) {
		Product item = productService.findById(id);
		m.addAttribute("item", item);
		return "product/detail";
	}
}
