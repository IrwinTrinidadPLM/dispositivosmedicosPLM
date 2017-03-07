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

import com.plmlatina.manager.manager;
import com.plmlatina.pojos.GetLeafCategories;

@Service
public class UtilitiesService {
 
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/WEB-INF/spring/spring-import.xml");
	//BeanGeneralSettings gSettings = (BeanGeneralSettings) context.getBean("beanGeneralSettings");
	

	/*   ManagerHealthSuppliersGuide  */
	
	//getCategoriesThreeByEditionByCategoriesThreeId
	public List<GetLeafCategories> getCategoriesThreeByEditionByCategoriesThreeId(int editionId, int categoryThreeId){
		manager manager =  context.getBean(manager.class); 
		return manager.getLeafCategoriesByCategoryThreeId(editionId, categoryThreeId);
	}
	
	
}
