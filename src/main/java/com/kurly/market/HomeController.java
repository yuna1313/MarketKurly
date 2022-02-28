package com.kurly.market;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String main(Model model) {
		model.addAttribute("formpath", "main");
		return "index";
	}
	
	@RequestMapping(value = "/main") 
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/index")
	public String index(Model model) {
		
		return "index";
	}
}
