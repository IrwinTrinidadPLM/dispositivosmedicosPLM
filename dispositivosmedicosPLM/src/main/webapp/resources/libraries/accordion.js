$accordion = {

	accordionFuntion : function(e){
	     var currentAttrValue = "#accordion-"+e;
	     
	     if($('#acc-'+e).hasClass('active')){

	    	 $accordion.close_accordion_section();
	    	 
	     }else{
	    	 
	    	 $accordion.close_accordion_section();
	    	 
	    	 $('#acc-'+e).addClass('active');
	    	 $('.accordion ' + currentAttrValue).slideDown(300).addClass('open'); 
	     }
	},

	close_accordion_section : function() {
		$(".accordion-section").each(function( index ) {
   		 if($('#acc-'+(index+1)).hasClass('active')) {
   			 var currentAttrValue = "#accordion-"+(index+1);
   			 $('#acc-'+(index+1)).removeClass('active');
   			 $('.accordion ' + currentAttrValue).slideUp(300).removeClass('open');
   		 }
   	 });
	}	
};