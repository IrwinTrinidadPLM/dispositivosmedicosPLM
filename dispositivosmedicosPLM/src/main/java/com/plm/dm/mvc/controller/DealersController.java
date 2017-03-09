package com.plm.dm.mvc.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plm.dm.mvc.service.UtilitiesService;
import com.plmlatina.model.GetClientDetailResult;
import com.plmlatina.model.GetClientsByEditionByClientTypeByTextResult;


@Controller 
@RequestMapping(value="/distribuidores")
public class DealersController {

	@Autowired
	UtilitiesService utilitiesService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String getDealersByText(Model model){		
		List<GetClientsByEditionByClientTypeByTextResult> listClientsEdition = utilitiesService.getClientsWithAddressByEditionByClientType("4lcqj6oXJb9nC3za2RM8VJfEezUZ",5,2,"b");
		String patternA = "[абвгде]";
		String patternE = "[ийкл]";
		String patternI = "[мноп]";
		String patternO = "[туфхц]";
		String patternU = "[щъыь]";
		Pattern pA = Pattern.compile(patternA);
		Pattern pE = Pattern.compile(patternE);
		Pattern pI = Pattern.compile(patternI);
		Pattern pO = Pattern.compile(patternO);
		Pattern pU = Pattern.compile(patternU);
		String cad = "";
		for(GetClientsByEditionByClientTypeByTextResult item:listClientsEdition){
			 
			 String tmp = item.getCompanyName().replaceAll(" ","-");
			 tmp = tmp.replaceAll(",","-");
			 tmp = tmp.replaceAll("\\(","");
			 tmp = tmp.replaceAll("\\)","");
			 tmp = tmp.replaceAll("\"","-");
			 tmp = tmp.replaceAll("\'","-");
			 String[] aux = tmp.split("\\.");
			 int total = aux.length;
			 for(int count=0;count<total;count++)
				cad += aux[count];
			 
			 if( !cad.equals("") )
				 tmp=cad;
			 tmp = tmp.replaceAll("\\.","-");
			 tmp = tmp.replaceAll("--","-");
		     String clean = tmp.toLowerCase();
		     
		     Matcher a = pA.matcher(clean);
			 clean = a.replaceAll("a");
			 Matcher e = pE.matcher(clean);
			 clean = e.replaceAll("e");
			 Matcher i = pI.matcher(clean);
			 clean = i.replaceAll("i");
			 Matcher o = pO.matcher(clean);
			 clean = o.replaceAll("o");
			 Matcher u = pU.matcher(clean);
			 clean = u.replaceAll("u");
			 
			 item.setBaseURL(clean);
			 cad="";
		 }
		 model.addAttribute("listAddressByClientType",listClientsEdition);
		return "distribuidores";
	}
	
	@RequestMapping(value="/distribuidor-medico/{clientName}-{clientId}", method=RequestMethod.GET)
	public String detailDealergetClientDetail(@PathVariable("clientId") int clientId,Model model){
		GetClientDetailResult clientDetailResult = null;
		clientDetailResult = utilitiesService.getClientDetail("4lcqj6oXJb9nC3za2RM8VJfEezUZ",5,clientId);
		model.addAttribute("clientDetailResult",clientDetailResult);
		return "distribuidor-medico";
	}
	
}
