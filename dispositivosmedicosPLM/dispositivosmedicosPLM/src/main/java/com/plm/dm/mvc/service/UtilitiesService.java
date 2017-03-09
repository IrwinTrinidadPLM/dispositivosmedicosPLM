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

import com.plmlatina.dao.manager.ManagerHealthSuppliersGuide;
import com.plmlatina.exception.PLMExceptions;
import com.plmlatina.manager.manager;
import com.plmlatina.model.GetClientDetailResult;
import com.plmlatina.model.GetClientsByEditionByClientTypeByTextResult;
import com.plmlatina.model.GetClientsWithAddressByEditionByClientTypeResult;
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
	
	public List<GetClientsByEditionByClientTypeByTextResult> getClientsWithAddressByEditionByClientType(String codeString,int editionId,int clientTypeId,String text){
		List<GetClientsByEditionByClientTypeByTextResult> listClientsEdition = null;
		ManagerHealthSuppliersGuide manager = context.getBean(ManagerHealthSuppliersGuide.class);
		try {
			listClientsEdition =  manager.getClientsByEditionByClientTypeByTextResult(codeString,editionId,clientTypeId,text);
		} catch (PLMExceptions e) {
			e.printStackTrace();
		}
		return listClientsEdition;
	}
	
	public GetClientDetailResult getClientDetail(String codeString, int editionId, int clientId){
		GetClientDetailResult clientDetail = null;
		ManagerHealthSuppliersGuide manager = context.getBean(ManagerHealthSuppliersGuide.class);
		try {
			clientDetail = manager.getClientDetail(codeString, editionId, clientId);
		} catch (PLMExceptions e) {
			e.printStackTrace();
		}
		return clientDetail;
	}
	
	
}
