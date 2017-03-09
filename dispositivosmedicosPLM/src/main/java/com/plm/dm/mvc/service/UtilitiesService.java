package com.plm.dm.mvc.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.plm.dm.mvc.bean.BeanGeneralSettings;
import com.plmlatina.dao.manager.ManagerHealthSuppliersGuide;
import com.plmlatina.exception.PLMExceptions;
import com.plmlatina.manager.manager;
import com.plmlatina.model.GetContentByProductResult;
import com.plmlatina.model.GetContentsByProductResult;
import com.plmlatina.model.GetProductsByEditionByLeafCategoryResult;
import com.plmlatina.pojos.GetLeafCategories;
import com.plmlatina.pojos.GetProducts;

@Service
public class UtilitiesService {
 
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/WEB-INF/spring/spring-import.xml");
	BeanGeneralSettings gSettings = (BeanGeneralSettings) context.getBean("beanGeneralSettings");
	

	/*   ManagerHealthSuppliersGuide  */
	
	public List<GetProductsByEditionByLeafCategoryResult> getProductsByEditionByLeafCategoryResult(int leafCategoryId){
		ManagerHealthSuppliersGuide managerHealthSuppliersGuide = context.getBean(ManagerHealthSuppliersGuide.class);
		try {
			return managerHealthSuppliersGuide.getProductsByEditionByLeafCategoryResult(gSettings.getCodeString(), gSettings.getEditionId(), leafCategoryId );
		} catch (PLMExceptions e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public GetContentByProductResult getContentsByProductResult(int clientId, int productId, String resolutionKey){
		ManagerHealthSuppliersGuide managerHealthSuppliersGuide = context.getBean(ManagerHealthSuppliersGuide.class);
		try {
			return managerHealthSuppliersGuide.getContentsByProductResult(gSettings.getCodeString(), gSettings.getEditionId(), clientId, productId, resolutionKey);
		} catch (PLMExceptions e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	//getCategoriesThreeByEditionByCategoriesThreeId
	public List<GetLeafCategories> getCategoriesThreeByEditionByCategoriesThreeId(int categoryThreeId){
		manager manager =  context.getBean(manager.class); 
		return manager.getLeafCategoriesByCategoryThreeId(gSettings.getEditionId(), categoryThreeId);
	}
	
	//GetProductsByLeafCategoryIdByCategoryThreeId
	public List<GetProducts> GetProductsByLeafCategoryIdByCategoryThreeId(int categoryThreeId, int leafCategoryId){
		manager manager =  context.getBean(manager.class); 
		return manager.GetProductsByLeafCategoryIdByCategoryThreeId(gSettings.getEditionId(), categoryThreeId, leafCategoryId);
	}
	
	
}
