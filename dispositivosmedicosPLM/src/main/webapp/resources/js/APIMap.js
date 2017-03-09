var APIMap = function(){
	
	//Creación de Mapa
	this.createMap = function( latitude , longitude, div ){
		var mapProp = {
			center: new google.maps.LatLng(latitude,longitude),
			zoom:18,
		}
		var map = new google.maps.Map(document.getElementById(div),mapProp);		
	}
	
	
} 