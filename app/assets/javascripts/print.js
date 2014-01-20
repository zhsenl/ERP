
//= require jquery
//= require jquery.tools.min

function preview_all() {
	$(".frame div").css("border-color", "#000000");
//	$(".frame div").css("color", "#000000");
    $(".frame .not_print").css('visibility','visible')
}

function preview_content() {
	$(".frame div").css("border-color", "#ffffff");
//	$(".frame div").css("color", "#ffffff");
//	$(".frame .content").css("color", "#000000");
    $(".frame .not_print").css('visibility','hidden')
}

function show_seals(){
    $(".seal").css('display','inline');
}

function hide_seals(){
    $('.seal').css('display','none');
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
	
	$(".content").not(".toggle").click(function(){
		$(this).after('<div class="tooltip">' + $('#mytip').html() + '</div>');
	});

    $(".toggle").click(function(){
        this.innerHTML = this.innerHTML == '&nbsp;' ? '√' : '&nbsp;'
    })

	$(".content").not(".toggle").tooltip({
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
            //单 <---> 总 互相影响
            var trigger = this.getTrigger();
            var tr_children = trigger.parent().parent().children();
            var quantity = $(tr_children[2]).children()[0];
            var unit_price = $(tr_children[3]).children()[0];
            var total_price = $(tr_children[4]).children()[0];
            var total_price_float = parseFloat($(total_price).text());
            var quantity_float = parseFloat($(quantity).text());
            var unit_price_float = parseFloat($(unit_price).text());
            if (total_price_float.toString() != 'NaN' && quantity_float.toString() != 'NaN' && unit_price_float.toString() != 'NaN') {
                if(trigger.hasClass('total_price')){
                    $(unit_price).html((total_price_float / quantity_float).toFixed(4));
                }else if(trigger.hasClass('unit_price')){
                    $(total_price).html((unit_price_float * quantity_float).toFixed(2));
                }else if(trigger.hasClass('quantity')){
                    $(total_price).html((unit_price_float * quantity_float).toFixed(2));
                }
            };
		}
	}).dynamic({
		bottom : {
			direction : 'down',
			bounce : true
		}
	});

    //ajax span
    $("span.autoload").each(function() {
        var span = this;
        var url = this.getAttribute("data-url");
//        if( this.innerHTML == "&nbsp;"){
//            return;
//        }
        $.get(url + "/" + this.innerHTML + "/show_by_code.json", function(result) {
            if (result == null) {
//                span.innerHTML += " (请正确填写)";
//                $(span).addClass("error_label");
            } else {
                span.innerHTML += " (" + result.name + ")";
            }
        });
    });

});
