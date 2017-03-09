$( function() {
    $.widget( "custom.catcomplete", $.ui.autocomplete, {
      _create: function() {
        this._super();
        this.widget().menu( "option", "items", "> :not(.ui-autocomplete-category)" );
      },
      _renderMenu: function( ul, items ) {
        var that = this,
          currentCategory = "";
        $.each( items, function( index, item ) {
          var li;
          if ( item.category != currentCategory ) {
            ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
            currentCategory = item.category;
          }
          li = that._renderItemData( ul, item );
          if ( item.category ) {
            li.attr( "aria-label", item.category + " : " + item.label );
          }
        });
      }
    });
    var data = predictive;
 
    $( "#searchPrincipal" ).catcomplete({
    	delay: 2,
		source: predictive,
		minLength: 3,
		select: function( event, ui ) {
			if(ui.item!=null){
				RedirectSearch(ui.item);
				$(this).val("");
				return false;
			}else {
				$(this).trigger("change");
				return false;
			}
		}
    });
    
    function RedirectSearch( item ){
    	var  path = "";
    	if(item.category === "CATEGORIAS DE PRODUCTOS"){
    		
    		var identifier = item.Key.indexOf(":");
    		var level = item.Key.substring(0,identifier);
    		path = item.Key.substring(identifier+1);
    		path =  $plm.cleanText(item.label) + "-"+ path;
    		
    		switch (level) {
    		case "3":
    			window.location.href = $plm.contextPath + $plm.routes.redirectCategoryProduct+ path;
    			break;
    		case "4":
    			window.location.href = $plm.contextPath + $plm.routes.redirectProducts+ path;
    			break;
    		}
    	}else if(item.category === "MARCAS"){
    		
    		path =  $plm.cleanText(item.label) + "-"+ item.Key;
    		window.location.href = $plm.contextPath + $plm.routes.redirectBrand + path;
    		
    	}else if(item.category === "EMPRESAS"){
    		
    		path =  $plm.cleanText(item.label) + "-"+ item.Key;
    		window.location.href = $plm.contextPath + $plm.routes.redirectCompany+ path;
    		
    	}
    	
    }
    
    
  });