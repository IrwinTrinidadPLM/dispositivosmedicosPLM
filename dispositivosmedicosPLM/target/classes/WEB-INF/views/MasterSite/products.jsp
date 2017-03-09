<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

      <!-- 2ND ROW OF PANELS -->
    <div class="row">
     <h3>Producto</h3>

      <div class="row">
            <!-- TODO PANEL -->
            <div class="col-lg-2 col-md-12 col-sm-12 mb">
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12 mb">
            
<!-- mensaje -->
            <c:if test="${getProducts == null}">
            
                <div class="showback">
						<p class="text-center">No se encontro información asociada con el término de búsqueda.<p>   				
      				</div>
            </c:if>
<!-- termina mensaje -->
            <c:if test="${getProducts != null}">
            
             <div class="green-panel pn" style="height: auto;">
                <div class="green-header" style="background: #092650;margin-bottom:0px;">
                  <h5>${title}</h5>
                </div>
                <div class="steps">
                  <c:forEach items="${getProducts}" var="getProduct">
					  <a onclick="$product.redirectProductDetail('${getProduct.getProductName() }', ${getProduct.getClientId() }, ${getProduct.getProductId() })"><label for='op1'>${getProduct.getProductName() }</label></a>
				  </c:forEach>
                  
              </div>
                
              </div>
            </c:if>
            </div><!--/col-md-4 -->

  
    </div><!--/END 2ND ROW OF PANELS -->