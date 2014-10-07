
//= require jquery
//= require jquery.tools.min
//= require jquery-ui.min

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
    $(".seal").show();
}
//seal的hide只是隐藏而已
function hide_seals(){
    $('.seal').hide();
}

function show_hide_column(class_name, id_name){
    var text = $("#" + id_name).text();
    if(text.substr(0, 2) == "显示"){
        $('.' + class_name).show();
        $("#" + id_name).text("隐藏" + text.substr(2, text.length));
    }
    else{
        $('.' + class_name).hide();
        $("#" + id_name).text("显示" + text.substr(2, text.length));
    }
}


//seal-div的hide是删除，要给删除的seal-div加上hideseals的class
function delete_seal(seal){
    $(seal).parent().hide().addClass("hideseals");
}
function upload_seal(input){
   if(input.files && input.files[0]){
       var reader = new FileReader();
       reader.onload = function(e){
           //$($('.seal')[0]).attr('src', e.target.result);
           hideseals = $('.hideseals');
           if(hideseals.size()){
               $(hideseals[0]).find('.seal').attr('src', e.target.result);
               $(hideseals[0]).removeClass('hideseals');
               $(hideseals[0]).css('display','inline');
           } else{
               alert("印章数不能超过"+ $('.seal').size() +"个。请先删除掉不想要的印章。（如果你之前按了隐藏印章，注意要按回显示印章）");
           }
       }
       reader.readAsDataURL(input.files[0]);
   }
}



function html_decode(text){
	return text.replace(/&nbsp;/g, " ");
}

function html_encode(text){
	return text.replace(/ /g, "&nbsp;");
}

$(document).ready(function() {
    //$('.seal').css('display','none');

    $('.seal-div').draggable();

    $(".delete_seals").hide();
    $(".seal-div").hover(function(){
        $(this).find('.delete_seals').show();
    },function(){
        $(this).find('.delete_seals').hide();
    });
    $("#upload_seal").change(function(){
        upload_seal(this);
    })
    $(".delete_seals").click(function(){
        delete_seal(this);
    })

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
