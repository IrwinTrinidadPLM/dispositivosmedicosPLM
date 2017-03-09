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
                      
                      setCoordinates: function( coordinates ){
        	  			  return $.ajax({
        	  				type:"GET",
        	  				url:$plm.contextPath+"/localizacion/"+coordinates,
        	  				data:JSON.stringify( coordinates ),
        	  				contentType:'application/json',
        	  				mimeType:'application/json',
        	  				success:function( response ){
        	  					windows.location.href( $plm.contextPath+"/localizacion/" ); 
        	  				},error:function(e){
        	  					console.log('Error: ' + e)
        	  				}
        	  			});
        	  		  }
         
         }
         
         
};
         
       
