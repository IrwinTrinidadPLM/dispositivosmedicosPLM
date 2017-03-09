$product = {
	 redirectProductDetail : function(productName, productId, clientId){
		 window.location.href = $plm.contextPath + $plm.routes.redirectProductDetail + $plm.cleanText(productName) +"-"+ clientId +"-"+ productId;
	 },
	 redirectProducts : function(leafCategory, categoryThreeId, leafCategoryId){
		 window.location.href = $plm.contextPath + $plm.routes.redirectProducts + $plm.cleanText(leafCategory) + "-" + categoryThreeId +"-" + leafCategoryId;
	 }
};
