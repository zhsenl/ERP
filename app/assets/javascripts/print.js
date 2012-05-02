//= require jquery
//= require jquery.tools.min

function preview_all(){
	$(".frame div").css("border-color","#000000");
	$("#print-wrapper div").css("color","#000000");
}

function preview_content(){
	$(".frame div").css("border-color","#ffffff");
	$(".frame div").css("color","#ffffff");
	$(".frame .content").css("color","#000000");
}
