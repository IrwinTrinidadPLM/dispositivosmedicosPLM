package com.plm.dm.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plm.dm.mvc.service.UtilitiesService;
import com.plmlatina.pojos.GetLeafCategories;

@Controller
@RequestMapping(value="/marca")
public class BrandController {

	@Autowired
	UtilitiesService utilitiesService;
	
	@RequestMapping(value = "/{brand}-{brandId}", method=RequestMethod.GET)
	public String productCategory(Model model, @PathVariable("brandId") int brandId) {
		
		return "brand";	

	}
}
