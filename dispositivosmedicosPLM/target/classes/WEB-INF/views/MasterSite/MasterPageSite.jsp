<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
   
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    

    <title>Guía de Proveedorees</title>

   <!--  css -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style-responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/plm-admin.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/accordion.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

   <!-- libreries -->
	<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBuHquogoju2nFcrkyJXyIwrtcxCizJDKo'></script>
    <script src="${pageContext.request.contextPath}/resources/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/libraries/jquery-ui.js" type="text/javascript"></script>
<%--     <script src="${pageContext.request.contextPath}/resources/libraries/ui-bootstrap-tpls-0.11.2.min.js" type="text/javascript"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/libraries/modernizr.custom.63321.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/libraries/jquery.fancybox.js"></script>    
    <script src="${pageContext.request.contextPath}/resources/libraries/predictive.js"></script>    
    <script src="${pageContext.request.contextPath}/resources/libraries/accordion.js"></script>    

  <!--  js -->
<%--     <script src="${pageContext.request.contextPath}/resources/js/main.js" type="text/javascript"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/js/autocomplete.js" type="text/javascript"></script>
     <script src="${pageContext.request.contextPath}/resources/js/plm_api.js" type="text/javascript"></script>
     <script src="${pageContext.request.contextPath}/resources/js/product.js" type="text/javascript"></script>
    
    <script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js"></script>

    

    <script type="text/javascript">

      $(document).ready(function() { 

            var window_height = $(window).height()-115;
            $(".wrapper").css('min-height', window_height - $('footer').outerHeight());

            $(function() {
              //    fancybox
                 jQuery(".fancybox").fancybox();
            });


                  
             });


    </script>
    
    <script type="text/javascript">
    $plm.contextPath = "${pageContext.request.contextPath}";
    </script>
    
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="">
            
            
           
             <div class="navbar navbar-smak black-bg navbar-fixed-top " id="navbar" role="navigation">
              <div class="container">
                <div class="navbar-header">
                  <button type="button" id="active-menu" class="navbar-toggle" data-placement="right"  data-target=".navbar-collapse" style="font-size: 22px;color: #002d6d;">
                        <i class="fa fa-bars"><img src="${pageContext.request.contextPath}/resources/images/menu.png" width="30px" alt="logo1" /></i></button>
                  <a class="navbar-brand animate" href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo-guia-de-proveedores.png" alt="logo1" /></a>
                </div>
                <div class="navbar-collapse collapse" style="padding: 25px 0">
                  
                </div>
                <!--/.nav-collapse -->
              </div>
              <div class="top-menu">
                 <ul class="nav pull-right top-menu" style="margin-top: -55px;">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" >
                            <img src="${pageContext.request.contextPath}/resources/images/configuracion.png" alt="logo1" width="20px" />
                            <!--<i class="fa fa-tasks"></i>-->
                            <!--<span class="badge bg-theme">4</span>-->
                        </a>
                          <ul class="dropdown-menu extended tasks-bar pull-right">
                            <div class="notify-arrow notify-arrow-green" style="left: 195px;"></div>
                            <li>
                                <p class="green" style="background-color: #ed800c;">Opciones</p>
                            </li>
                            <li>
                                <a href="">
                                    <div class="task-info">
                                        <div class="desc"> <i class="fa fa-info-circle"></i><span>Términos y Condiciones</span></div>
                                        
                                    </div>
                                    
                                </a>
                            </li>
                             <li>
                                <a href="">
                                    <div class="task-info">
                                        <div class="desc"><i class="fa fa-envelope"></i><span>Contacto</span></div>
                                        
                                    </div>
                                    
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="task-info">
                                        <div class="desc"><i class="fa fa-tag"></i><span>Créditos</span></div>
                                        
                                    </div>
                                    
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="task-info">
                                        <div class="desc"><i class="fa fa-bookmark"></i><span>Sugerencias</span></div>
                                        
                                    </div>
                                    
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="task-info">
                                        <div class="desc"><i class="fa fa-bell-o"></i><span>Aviso de Privacidad</span></div>
                                        
                                    </div>
                                    
                                </a>
                            </li>
                          </ul>
                       
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <img src="${pageContext.request.contextPath}/resources/images/notificaciones-push.png" alt="logo1" width="20px" />
                            <!--<i class="fa fa-envelope-o"></i>-->
                            <!--<span class="badge bg-theme">4</span>-->
                           
                        </a>
                       
                    </li>

                    <!-- inbox dropdown end -->
                </ul>
              </div>

             <div class="onerow topstrip">
             </div>
             

              
            </div>

            

        </header>

      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                 
                    
                  <li class="mt">
                      <a class="" href="#/buscadores">
                          <i class="fa" style="width: 70px;height: 50px;"><span class="img-circle" ></span></i>
                           <span></span>
                      </a>
                  </li>
                  <li class="mt">
                      <a class="" href="./directorio-comercial-mexico/a">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/directorio-mexicano.png" height="40px"></i>
                          <span>Directorio  México   </span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/directorio-internacional.png" height="40px"></i>
                          <span>Directorio Internacional</span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="./hospitales">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/buscador-de-hospitales.png" height="40px"></i>
                          <span>Hospitales</span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/congresos-medicos.png" height="40px"></i>
                          <span>Congresos Médicos</span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/compranet.png" height="40px"></i>
                          <span>ComprasNet</span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/distribuidores-cercanos.png" height="40px"></i>
                          <span>Distribuidores</span>
                      </a>
                  </li>
                   <li class="mt">
                      <a class="" href="">
                          <i class="fa"><img class="img-circle" src="${pageContext.request.contextPath}/resources/images/menu/informacion-importante.png" height="40px"></i>
                          <span>Información Importante</span>
                      </a>
                  </li>

              
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <style>
  .ui-autocomplete-category {
    font-weight: bold;
    padding: .2em .4em;
    margin: .8em 0 .2em;
    line-height: 1.5;
  }
  .ui-autocomplete {
    max-height: 300px;
    overflow-y: auto;
    /* prevent horizontal scrollbar */
    overflow-x: hidden;
  }
  /* IE 6 doesn't support max-height
   * we use height instead, but this forces the menu to always be this tall
   */
  * html .ui-autocomplete {
    height: 300px;
  }
  </style>
      <section id="main-content">
          <section class="wrapper">
                <div class="showback" id="div-showback">
                        <div class="col-md-4 col-sm-6 col-xs-12 pull-right">
                           <div class="input-group input-group-sm" style="margin-top: -5px;">
                           
                            <input type="text" class="form-control" placeholder="Buscar producto, marca, empresa" id="searchPrincipal"/>
                            <span class="input-group-btn">
                              <button class="btn btn-info btn-flat" type="button" style="background-color:#ed800c;border-color:#e47d10;">Buscar </button>
                            </span>
                         
                          </div>
                        </div>
                  </div>

                  <tiles:insertAttribute name="bodySite"></tiles:insertAttribute>	
                  
                 </div>
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2016 - PLM México
              <a href="" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    

	



  </body>
</html>
