<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="map" style="width:100%;height:400px;"></div>
<script>
	var apiMap = new APIMap();
	var index = window.location.pathname.lastIndexOf("/");
	var myArray = window.location.pathname.substring(index+1).split("&");
	apiMap.createMap(myArray[0],myArray[1],"map");
</script>
