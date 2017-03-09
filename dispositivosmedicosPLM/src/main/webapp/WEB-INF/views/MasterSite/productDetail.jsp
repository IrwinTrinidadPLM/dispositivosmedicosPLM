<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <!-- 2ND ROW OF PANELS -->
    <div class="row">
     <h3> Descripción del producto</h3>

      <div class="row">
            <!-- TODO PANEL -->
            <div class="col-lg-2 col-md-12 col-sm-12 mb">
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12 mb">
            
<!-- mensaje -->
            <c:if test="${getContentsByProductResult == null}">
            
                <div class="showback">
						<p class="text-center">No se encontro información asociada con el término de búsqueda.<p>   				
      				</div>
            </c:if>
<!-- termina mensaje -->
            <c:if test="${getContentsByProductResult != null}">
            
             <div class="green-panel pn" style="height: auto;">
                
                <div class="white-panel pn">
					<p><img src="http://187.237.235.54/HealthSuppliersGuideEngine/Mexico/productshots/400x400/aerosol_aero_togo.png" class="" width="300"></p>
					<p><b class="dark-blue">Aerosol AEROTOGO</b></p>
					<div class="row">
						<div class="col-md-6">
							<p class="small mt orange-text">MEMBER SINCE</p>
							<p class="orange-text">2012</p>
						</div>
						<div class="col-md-6">
							<p class="small mt orange-text">TOTAL SPEND</p>
							<p class="orange-text">$ 47,60</p>
						</div>
					</div>
				</div>
                <!--Accordion-->	
                              <div class="accordion">
                          <c:forEach items="${getContentsByProductResult}" var="getProductDetail" varStatus="contando">
                                  <div class="accordion-section">
                                      <a id="acc-${contando.count}" style="cursor: default;" class="accordion-section-title" onclick="$accordion.accordionFuntion(${contando.count})">probando</a>
                                       
                                      <div id="accordion-${contando.count}" class="accordion-section-content">
                                          <p class="contentLeft"> resultado</p>

                                      </div><!--end .accordion-section-content-->
                                  </div><!--end .accordion-section-->
                                   
                         </c:forEach>
                              </div>
              <!--end .accordion-->	
                
                
                
              </div>
            </c:if>
            </div><!--/col-md-4 -->

  
    </div><!--/END 2ND ROW OF PANELS -->