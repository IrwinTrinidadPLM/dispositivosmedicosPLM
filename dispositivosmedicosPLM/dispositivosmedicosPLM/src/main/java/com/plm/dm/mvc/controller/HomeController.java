package com.plm.dm.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plm.dm.mvc.service.UtilitiesService;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	 
	@Autowired
	UtilitiesService utilitiesService;
	
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String home(Model model) {
		
		
		return "index";

	}
}

