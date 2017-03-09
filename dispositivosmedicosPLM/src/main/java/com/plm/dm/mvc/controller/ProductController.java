package com.plm.dm.mvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.plm.dm.mvc.service.UtilitiesService;
import com.plmlatina.model.GetContentByProductResult;
import com.plmlatina.model.GetProductsByEditionByLeafCategoryResult;
import com.plmlatina.pojos.GetLeafCategories;

@Controller
public class ProductController {

	@Autowired
	UtilitiesService utilitiesService;
	
	@RequestMapping(value = "/categoria-producto/{categoryThree}-{categoryThreeId}", method=RequestMethod.GET)
	public String productCategory(Model model, @PathVariable("categoryThreeId") int categoryThreeId) {
		
		List<GetLeafCategories> getLeafCategories = utilitiesService.getCategoriesThreeByEditionByCategoriesThreeId(categoryThreeId);
		model.addAttribute("getLeafCategories", getLeafCategories);
		model.addAttribute("title", getLeafCategories.size() > 0?getLeafCategories.get(0).getCategoryThree():"");
		return "productCategory";	

	}
	
	@RequestMapping(value = "/producto/{leafCategory}-{categoryThreeId}-{leafCategoryId}", method=RequestMethod.GET)
	public String productCategory(Model model, @PathVariable("categoryThreeId") int categoryThreeId, @PathVariable("leafCategoryId") int leafCategoryId) {
		
		List<GetProductsByEditionByLeafCategoryResult> getProducts = utilitiesService.getProductsByEditionByLeafCategoryResult(leafCategoryId);
		model.addAttribute("getProducts", getProducts);
		model.addAttribute("title", getProducts!=null?getProducts.get(0).getCompanyName():"");
		return "products";	

	}
	
	@RequestMapping(value = "/descripcion-producto/{productName}-{clientId}-{productId}", method=RequestMethod.GET)
	public String productDetails(Model model, @PathVariable("productId") int productId, @PathVariable("clientId") int clientId) {
		
		GetContentByProductResult getContentsByProductResult = utilitiesService.getContentsByProductResult(clientId, productId, "");
		model.addAttribute("getContentsByProductResult", getContentsByProductResult);
		model.addAttribute("title", getContentsByProductResult!=null?getContentsByProductResult.getProductName():"");
		return "productDetail";	
		
	}
}
