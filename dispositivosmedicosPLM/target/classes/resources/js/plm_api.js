 $plm = {};
 
      $plm.init = function(){
    	 
    	  var predictivejson = predictive;
    	 
    	
      };
      
	  $plm.services = {
			  
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
	  
	  };
	  
	  $plm.init();
	 