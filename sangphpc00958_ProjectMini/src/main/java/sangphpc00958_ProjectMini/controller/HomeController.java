package sangphpc00958_ProjectMini.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping({"/","/home/index"})
	public String index() {
		return "redirect:/product/list";
	}
	@RequestMapping({"/admin", "/admin/home/index"})
	public String admin() {
		return "redirect:/assets/admin/index.html";
	}
	@RequestMapping("/dangky")
	public String dangky() {
		return "layout/_registration.html";
	}
	@RequestMapping("/forget")
	public String forget() {
		return "layout/_forgetPass.html";
	}
	@RequestMapping("/doimk")
	public String doimk() {
		return "layout/_doimk.html";
	}
	@RequestMapping("/test")
	public String test() {
		return "layout/_page.html";
	}
}
