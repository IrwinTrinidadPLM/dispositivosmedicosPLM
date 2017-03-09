package com.plm.dm.mvc.bean;

public class BeanGeneralSettings {
   
	private String codeString;
	private int editionId;
	
	public BeanGeneralSettings(){
		
	}

	public BeanGeneralSettings(String codeString, int editionId) {
		super();
		this.codeString = codeString;
		this.editionId = editionId;
	}

	public String getCodeString() {
		return codeString;
	}

	public void setCodeString(String codeString) {
		this.codeString = codeString;
	}

	public int getEditionId() {
		return editionId;
	}

	public void setEditionId(int editionId) {
		this.editionId = editionId;
	}
	
	
}
