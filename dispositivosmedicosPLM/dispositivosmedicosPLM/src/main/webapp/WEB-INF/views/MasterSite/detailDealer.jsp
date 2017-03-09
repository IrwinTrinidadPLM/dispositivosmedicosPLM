<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 2ND ROW OF PANELS -->
<div class="row">
	<h3>
		<i class="fa fa-angle-right"></i> Detalle de Hospital
	</h3>
	<div class="col-lg-1 col-md-12 col-sm-12 mb"></div>
	<div class="col-lg-10 col-md-12 col-sm-12 mb">
		<div class="product-panel-2 pn" style="background: #FFF; overflow-y: auto;">
			<br />
			<img src="images/hospitales/${clientDetailResult.getImage()}hospitalangeles.png" width="200" alt="">
			<h4 class="mt" style="color: #092650; font-weight: bold;">
				${clientDetailResult.getCompanyName()}
			</h4>
			<div class="blog-text" style="text-align: left;">
				<h4>
					<i class="fa fa-angle-right"></i> Dirección
				</h4>
				<c:forEach var="address" items="${clientDetailResult.getAddresses()}">
					<p>${address.getAddress()} ${address.getSuburb()} ${address.getZipCode()} ${address.getCity()}</p>
					<h4>
						<i class="fa fa-angle-right"></i> Correo electrónico:
					</h4>
					<c:set var="email" value="${address.getEmail().split(';')}"/>						
					
					<c:forEach var="mail" items="${email}">
						${mail}<br/>
					</c:forEach>
					
					<h4>
						<i class="fa fa-angle-right"></i> Dirección web:
					</h4>
					<p>
						<a href="http://${address.getWeb()}" target="_blank">http://${address.getWeb()}</a>
					</p>
					<h4>
						<i class="fa fa-angle-right"></i> Teléfono(s):
					</h4>
					
					<c:forEach var="phone" items="${address.getPhones()}">
						<p>${phone.getNumber()}</p>
					</c:forEach>
				</c:forEach>
			</div>

			<div class="row">
				<div class="col-sm-6 col-xs-6 pull-right">
					<c:forEach var="address" items="${clientDetailResult.getAddresses()}">
						
			        
				        <c:forEach var="address" items="${clientDetailResult.getAddresses()}">
<!-- 				        id="add-regular" class="btn btn-default btn-sm -->
							<a href="${pageContext.request.contextPath}/localizacion/${address.getLatitud()}&${address.getLongitud()}" id="add-regular" class="btn btn-default btn-sm">  
								<img  src="${pageContext.request.contextPath}/resources/images/unnamed.png" width="40" alt="">
							</a>
						</c:forEach>
									
					</c:forEach>
				</div>
			</div>

			<br />
		</div>
	</div>
	<!--/col-md-4 -->




</div>
<!--/END 2ND ROW OF PANELS -->
<script>
// 	$("#add-regular").click(function(){
// 		$plm.services.setCoordinates( $(this).val() );	
// 	});
</script>


