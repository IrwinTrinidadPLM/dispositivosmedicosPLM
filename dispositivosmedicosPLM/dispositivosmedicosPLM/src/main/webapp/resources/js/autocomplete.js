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
    	if(item.category === "Categorias de Productos"){
    		
    		var identifier = item.Key.indexOf(":");
    		var level = item.Key.substring(0,identifier);
    		path = item.Key.substring(identifier+1);
    		path = stringText(item.label) + "-"+ path;
    		
    		switch (level) {
    		case "3":
    			console.log("3");
    			window.location.href = $plm.contextPath + "/producto/"+ path;
    			break;
    		case "4":
    			console.log("4");
    			window.location.href = $plm.contextPath + "/producto/"+ path;
    			break;
    		}
    	}else if(item.category === "Marcas"){
    		
    		path = stringText(item.label) + "-"+ item.Key;
    		window.location.href = $plm.contextPath + "/marca/"+ path;
    		
    	}else if(item.category === "Empresas"){
    		
    		path = stringText(item.label) + "-"+ item.Key;
    		window.location.href = $plm.contextPath + "/empresa/"+ path;
    		
    	}
    	
    }
    
    function stringText(string){
    	
    	string = string.toLowerCase();
    	string = string.trim();
		string = string.replace(new RegExp(/[àáâãäå]/g),"a");
        string = string.replace(new RegExp(/[èéêë]/g),"e");
        string = string.replace(new RegExp(/[ìíîï]/g),"i");
        string = string.replace(new RegExp(/[òóôõö]/g),"o");
        string = string.replace(new RegExp(/[ùúûü]/g),"u");
        string = string.replace(new RegExp(/ /g),"-");
        string = string.replace(new RegExp(/[\,]/g),"");
        string = string.replace(new RegExp(/[\.]/g),"");
        string = string.replace(new RegExp(/[%]/g),"");
        string = string.replace(new RegExp(/[\/]/g),"-");
        string = string.replace(new RegExp(/[\\]/g),"-");
        string = string.replace(new RegExp(/[(]/g),"");
        string = string.replace(new RegExp(/[)]/g),"");
		
		return string;
    }
  });