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
@RequestMapping(value = "/producto")
public class ProductController {

	@Autowired
	UtilitiesService utilitiesService;
	
	@RequestMapping(value = "/{categoryThree}-{categoryThreeId}", method=RequestMethod.GET)
	public String productCategory(Model model, @PathVariable("categoryThreeId") int categoryThreeId) {
		
		List<GetLeafCategories> getLeafCategories = utilitiesService.getCategoriesThreeByEditionByCategoriesThreeId(5, categoryThreeId);
		 for(GetLeafCategories getLeafCategory:getLeafCategories){
			 System.out.println(getLeafCategory.getLeafCategory());
		 }
		return "product";

	}
}
