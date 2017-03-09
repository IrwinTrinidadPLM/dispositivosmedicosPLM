<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <!-- 2ND ROW OF PANELS -->
    <div class="row">
     <h3>Categoria de producto</h3>

      <div class="row">
            <!-- TODO PANEL -->
            <div class="col-lg-2 col-md-12 col-sm-12 mb">
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12 mb">
            <!-- mensaje -->
            <c:if test="${getLeafCategories.size() == 0}">
            
                <div class="showback">
						<p class="text-center">No se encontro información asociada con el término de búsqueda.<p>   				
      				</div>
            </c:if>
<!-- termina mensaje -->
            <c:if test="${getLeafCategories.size() > 0}">
             <div class="green-panel pn" style="height: auto;">
                <div class="green-header" style="background: #092650;margin-bottom:0px;">
                  <h5>${title}</h5>
                </div>
                <div class="steps">
                  <c:forEach items="${getLeafCategories}" var="LeafCategory">
					  <a onclick="$product.redirectProducts('${LeafCategory.getLeafCategory() }', ${LeafCategory.getCategoryThreeId() }, ${LeafCategory.getLeafCategoryId() })"><label for='op1'>${LeafCategory.getLeafCategory() }</label></a>
				  </c:forEach>
              </div>
                
              </div>
             </c:if>
            </div><!--/col-md-4 -->

  
    </div><!--/END 2ND ROW OF PANELS -->