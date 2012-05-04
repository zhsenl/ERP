//= require jquery
//= require jquery.tools.min

function preview_all() {
	$(".frame div").css("border-color", "#000000");
	$(".frame div").css("color", "#000000");
}

function preview_content() {
	$(".frame div").css("border-color", "#ffffff");
	$(".frame div").css("color", "#ffffff");
	$(".frame .content").css("color", "#000000");
}

function html_decode(text){
	return text.replace(/&nbsp;/g, " ");
}

function html_encode(text){
	return text.replace(/ /g, "&nbsp;");
}

$(document).ready(function() {

	$(".content").each(function() {
		if($(this).html() == "") {
			$(this).html("&nbsp;");
		}
	});
	
	$(".content").click(function(){
		$(this).after('<div class="tooltip">' + $('#mytip').html() + '</div>');
	});

	$(".content").tooltip({
		events : {
			def : "click,mouseleave", // default show/hide events for an element
			input : "focus,blur", // for all input elements
			widget : "focus mouseenter,blur mouseleave", // select, checkbox, radio, button
			tooltip : "mouseenter,mouseleave"     // the tooltip element
		},
		onShow : function(){	
			var textarea = this.getTip().find("#textarea");
			var inner_text = this.getTrigger().html();
			if (inner_text == "&nbsp;") {
				textarea.val("");
			} else {
				textarea.val(html_decode(inner_text));
			}
			var trigger = this.getTrigger();
			textarea.unbind("keyup");
			textarea.keyup(function(){
				trigger.html(html_encode($(this).val()));
			});
			textarea.focus();		
		},
		onHide : function(){
			var textarea = this.getTip().find("#textarea");
			var inner_text = textarea.val();
			if (inner_text == "" ) {
				inner_text = "&nbsp;";
			};
			this.getTrigger().html(html_encode(inner_text));
			this.getTrigger().parent().find(".tooltip").each(function(){
				var position = $(this).css("position")
				if ($(this).css("position") != "absolute") {
					$(this).detach();
				}				
			});
		}
	}).dynamic({
		bottom : {
			direction : 'down',
			bounce : true
		}
	});
	
});
