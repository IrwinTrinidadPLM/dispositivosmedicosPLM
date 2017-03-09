package com.plm.dm.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/localizacion")
public class LocalizationController {

	@RequestMapping(value="/{latitud}&{longitud}", method=RequestMethod.GET)
	public String markingMap( Model model ){
		return "localizacion";
	}
	
	 
}
