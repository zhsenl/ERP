$(document).ready(function(){
	//get controller and action
		var controller_and_action = $("#controller").val().replace("/","_") + "_" + $("#action").val();
		if ($("#mark").val() != "") {
			controller_and_action = $("#mark").val() + "_" + controller_and_action;
		}
		var locations = controller_and_action.split("_");
		for (var i = 0; i < locations.length; i++) {
			if (i == 0) {
				current_item = locations[0];
			} else if ($("."+current_item + "_" + locations[i]).length > 0) {
				current_item = current_item + "_" + locations[i];
			}
		}
		
	//Sidebar Accordion Menu:
		$("#main-nav li ."+current_item).addClass("current");
		//console.log(current_item);
		$("#main-nav li ."+current_item).parent().parent().show(); // Slide down the current menu item's sub menu
		
		$("#main-nav li a.nav-top-item").click( // When a top menu item is clicked...
			function () {
				$(this).parent().siblings().find("ul").slideUp("normal"); // Slide up all sub menus except the one clicked
				$(this).next().slideToggle("normal"); // Slide down the clicked sub menu
				return false;
			}
		);
		
		$("#main-nav li a.no-submenu").click( // When a menu item with no sub menu is clicked...
			function () {
				window.location.href=(this.href); // Just open the link instead of a sub menu
				return false;
			}
		);

    // Sidebar Accordion Menu Hover Effect:
		
		$("#main-nav li .nav-top-item").hover(
			function () {
				$(this).stop().animate({ paddingRight: "25px" }, 200);
			}, 
			function () {
				$(this).stop().animate({ paddingRight: "15px" });
			}
		);

    //Minimize Content Box
		
		$(".content-box-header h3").css({ "cursor":"s-resize" }); // Give the h3 in Content Box Header a different cursor
		$(".closed-box .content-box-content").hide(); // Hide the content of the header if it has the class "closed"
		$(".closed-box .content-box-tabs").hide(); // Hide the tabs in the header if it has the class "closed"
		
		$(".content-box-header h3").click( // When the h3 is clicked...
			function () {
			  $(this).parent().next().toggle(); // Toggle the Content Box
			  $(this).parent().parent().toggleClass("closed-box"); // Toggle the class "closed-box" on the content box
			  $(this).parent().find(".content-box-tabs").toggle(); // Toggle the tabs
			}
		);

    // Content box tabs:
		
		$('.content-box .content-box-content div.tab-content').hide(); // Hide the content divs
		$('ul.content-box-tabs li a.default-tab').addClass('current'); // Add the class "current" to the default tab
		$('.content-box-content div.default-tab').show(); // Show the div with class "default-tab"
		
		$('.content-box ul.content-box-tabs li a').click( // When a tab is clicked...
			function() { 
				$(this).parent().siblings().find("a").removeClass('current'); // Remove "current" class from all tabs
				$(this).addClass('current'); // Add class "current" to clicked tab
				var currentTab = $(this).attr('href'); // Set variable "currentTab" to the value of href of clicked tab
				$(currentTab).siblings().hide(); // Hide all content divs
				$(currentTab).show(); // Show the content div with the id equal to the id of clicked tab
				return false; 
			}
		);

    //Close button:
		
		$(".close").click(
			function () {
				$(this).parent().fadeTo(400, 0, function () { // Links with the class "close" will close parent
					$(this).slideUp(400);
				});
				return false;
			}
		);

    // Alternating table rows:
		
		$('tbody tr:even').addClass("alt-row"); // Add class "alt-row" to even table rows

    // Check all checkboxes when the one in a table head is checked:
		
		$('.check-all').click(
			function(){
				$(this).parent().parent().parent().parent().find("input[type='checkbox']").attr('checked', $(this).is(':checked'));   
			}
		);
		
	// Initialise Facebox Modal window:

		$('a[rel*=facebox]').facebox(); // Applies modal window to any link with attribute rel="modal"
    
	//on window resizing
		$(window).resize(function() {
		  width = $(document.body).width();
		  width = width <= 980 ? 980 : width;
		  $("#body-wrapper").width(width + "px");
		});
	
	
	function load_unread_messages(){
		$.get("/messages/unread.json", function(result){
			if (result.length == 0 ){return;}
			$("#welcome_message").html("你有 <a href=\"#messages\" class=\"unread_message_size\" rel=\"facebox\"></a>")
	    	$(".unread_message_size").html(result.length + "条未读消息")
	    	$("#body-wrapper #messages p").detach();
	    	for (var i in result) {
	    		var message_html = '<p><strong>' + result[i].subject +'</strong> '
	    		+ result[i].created_at + ' 来自 ' + result[i].peer + ' <br />'
	    		+ result[i].body +'<small><a href=\"../messages/' + result[i].id + '/read.json\" onclick=\"read_message(this);return false;\" class=\"remove-link\" >标记为已读</a></small></p>';
	    		$("#messages").append(message_html);
	    	}
	    	$('a[rel*=facebox]').facebox();	    	
	    });
	}
	load_unread_messages();
	setInterval(function(){
		load_unread_messages();
	}, 180000);
	
		
	//first form field focus
	$(".first-field").focus();
	
	//ajax span
	$("span.autoload").each(function(){
		var span = this;
		var url = this.getAttribute("data-url");
		$.get(url + "/" + this.innerHTML +"/show_by_code.json", function(result){
	    	if (result == null) {
	    		span.innerHTML += " (请正确填写)";
	    		$(span).addClass("error_label");
	    	} else {
	    		span.innerHTML += " (" + result.name + ")";
	    	}
	  	});
	});
	
	
	//autocomplete field settings
	$("input[id$='_autocomplete']").each(function(){
		var label = $("#" + this.id + "_label");
		var label_content = label.html();
		var url = this.getAttribute("data-url");
		var minLength = this.getAttribute("data-minLength");
		if (this.value != "") {
			$.get(url + "/" + this.value +"/show_by_code.json", function(result){
		    	if (result == null) {
			    		label.html("<span class='error_label'>请正确填写</span>");
			    	} else {
			    		label.html(result.name);
			    	}
		  	});
		}
				
		$(this).autocomplete({
			source : function(request, response) {
				$.get(url + "/search.json?term="+ encodeURI(request.term), function(result){
					response($.map(result, function(item) {
						item.label = item.code + ":" + item.name;
						item.value = item.code;
						return item;
					}));
			  	});
			},
			minLength : minLength,
			select: function( event, ui ) {
				label.html(ui.item.name);
			}
		});
		
		$(this).blur(function(){
			if (this.value != "") {
				$.get(url + "/" + this.value +"/show_by_code.json", function(result){
			    	if (result == null) {
				    		label.html("<span class='error_label'>请正确填写</span>");
				    	} else {
				    		label.html(result.name);
				    	}
			  	});
			} else {
				label.html(label_content);
			}			
		})
	});
	
	//combo box
	$.widget( "ui.combobox", {
		_create: function() {
			var input,
				self = this,
				select = this.element.hide(),
				selected = select.children( ":selected" ),
				value = selected.val() ? selected.text() : "",
				wrapper = $( "<span>" )
					.addClass( "ui-combobox" )
					.insertAfter( select );
			
			input = $( "<input>" )
				.appendTo( wrapper )
				.val( value )
				.addClass( "ui-state-default" )
				.autocomplete({
					delay: 0,
					minLength: 0,
					source: function( request, response ) {
						var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
						response( select.children( "option" ).map(function() {
							var text = $( this ).text();
							if ( this.value && ( !request.term || matcher.test(text) ) )
								return {
									label: text.replace(
										new RegExp(
											"(?![^&;]+;)(?!<[^<>]*)(" +
											$.ui.autocomplete.escapeRegex(request.term) +
											")(?![^<>]*>)(?![^&;]+;)", "gi"
										), "<strong>$1</strong>" ),
									value: text,
									option: this
								};
						}) );
					},
					select: function( event, ui ) {
						ui.item.option.selected = true;
						self._trigger( "selected", event, {
							item: ui.item.option
						});
						select.change();
					},
					change: function( event, ui ) {
						if ( !ui.item ) {							
							var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( $(this).val() ) + "$", "i" ),
								valid = false;
							select.children( "option" ).each(function() {
								if ( $( this ).text().match( matcher ) ) {
									this.selected = valid = true;
									return false;
								}
							});							
							if ( !valid ) {
								// remove invalid value, as it didn't match anything
								$( this ).val( "" );
								select.val( "" );
								input.data( "autocomplete" ).term = "";
								return false;
							}
						}
						select.change();
					}
				})
				.addClass( self.element.attr("class") );

			input.data( "autocomplete" )._renderItem = function( ul, item ) {
				return $( "<li></li>" )
					.data( "item.autocomplete", item )
					.append( "<a>" + item.label + "</a>" )
					.appendTo( ul );
			};

			$( "<a>" )
				.attr( "tabIndex", -1 )
				.attr( "title", "显示全部选项" )
				.appendTo( wrapper )
				.button({
					icons: {
						primary: "ui-icon-triangle-1-s"
					},
					text: false
				})
				.removeClass( "ui-corner-all" )
				.addClass( "ui-corner-right ui-button-icon" )
				.click(function() {
					// close if already visible
					if ( input.autocomplete( "widget" ).is( ":visible" ) ) {
						input.autocomplete( "close" );
						return;
					}

					// work around a bug (likely same cause as #5265)
					$( this ).blur();

					// pass empty string as value to search for, displaying all results
					input.autocomplete( "search", "" );
					input.focus();
				});
		},

		destroy: function() {
			this.wrapper.remove();
			this.element.show();
			$.Widget.prototype.destroy.call( this );
		}
	});
	
	//combo box
	$("select[id$='_combobox']").each(function(){
		$(this).combobox();
	});
	
});
  
  
  

//unread messages
function read_message(link) {
	var p = $(link).parent().parent();
	var href = $(link).attr("href")
	$.post(href, function(){
		p.slideUp("normal", function(){
			$("[href='" + href + "']").parent().parent().detach();
			$(".unread_message_size").html($(".content .remove-link").length + "条未读消息")
			if ($(".content .remove-link").length == 0) {
				$("#welcome_message").html("欢迎你");
				$("#facebox").fadeOut();
			}
		});
	});	
}


  