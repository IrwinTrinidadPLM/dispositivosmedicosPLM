 $plm = {
 
	 cleanText : 
		 function (string){
		 
		 string = string.toLowerCase();
		 string = string.trim();
		 string = string.replace(new RegExp(/[àáâãäå]/g),"a");
		 string = string.replace(new RegExp(/[èéêë]/g),"e");
		 string = string.replace(new RegExp(/[ìíîï]/g),"i");
		 string = string.replace(new RegExp(/[òóôõö]/g),"o");
		 string = string.replace(new RegExp(/[ùúûü]/g),"u");
		 string = string.replace(new RegExp(/ /g),"-");
		 string = string.replace(new RegExp(/[\,]/g),"");
		 string = string.replace(new RegExp(/[\.]/g),"");
		 string = string.replace(new RegExp(/[%]/g),"");
		 string = string.replace(new RegExp(/[\/]/g),"-");
		 string = string.replace(new RegExp(/[\\]/g),"-");
		 string = string.replace(new RegExp(/[(]/g),"");
		 string = string.replace(new RegExp(/[)]/g),"");
		 string = string.replace("---", "-");
		 string = string.replace("--","-");
		 
		 return string;
	 },
	 
	 routes : {
			 redirectProductDetail : "/descripcion-producto/",
			 redirectCategoryProduct : "/categoria-producto/",
			 redirectProducts : "/producto/",
			 redirectBrand : "/marca/",
			 redirectCompany : "/empresa/"
	 },
	 
	  services : {
			  
			  getAction: function (email,selectorHTML) {
				  return  $.ajax({  
				    	type : "POST",   
						url:urlPath+"/EnginePrescription/saveSelected",
						cache: (na)?true:false,
						data : JSON.stringify( selector ),
						contentType: 'application/json',
				   	 	mimeType: 'application/json', 
						success : function(response) {
							return response;
						},error : function(e) {  
					    	console.log('Error: ' + e);
					    }  
					});

					
			  }
			  
	  
	  }
 };
	  
	 