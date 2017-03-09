<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<div class="row mtbox" id="row-hospiatles" style="margin-top: 3px;">
			<c:forEach var="client" items="${listAddressByClientType}">
				<div class="col-md-3 col-sm-5 box0">
					<div class="box1">
						<span class="li_heart"></span> 
						<a href="${pageContext.request.contextPath}/distribuidores/distribuidor-medico/${client.getBaseURL()}-${client.getClientId()}">
							<div class="hospital-img" style="background-image: url(resources/images/hospitales/imss.png)"></div>
						</a>
					</div>
					<c:if test="${client.getCompanyName().length()<36}">
						<p style="padding:10px;">${client.getCompanyName()}</p>
					</c:if>
					<c:if test="${client.getCompanyName().length()>35}">
						<p>${client.getCompanyName()}</p>
					</c:if>
				</div>
			</c:forEach>
		</div>

