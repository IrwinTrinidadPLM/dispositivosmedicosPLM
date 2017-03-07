package com.plm.dm.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/buscadores")
public class SearchEnginesController {
	
	public String home(Model model) {
		
		return "index";

	}

}
