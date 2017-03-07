package com.plm.dm.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	 
	
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String home(Model model) {
		
		return "index";

	}
}

