$(document).ready(function() {
	var tds = $("td");
	tds.click(tdclick);
});
function tdclick() {
	var td=$(this);
	var text=td.text();
	td.html("");
	var input=$("<input>");
	input.attr("value",text);
	input.keyup(
			function(event) {
				var myEvent = event || window.event;
				var kcode = myEvent.keyCode;
				if(kcode==13){
					var inputnode = $(this);
					var inputtext = inputnode.val();
					var tdNode =  inputnode.parent();
					tdNode.html(inputtext);
					tdNode.click(tdclick);
					
				}
			}
	);
	td.append(input);
	var inputdom=input.get(0);
	inputdom.select();
	td.unbind("click");
}


$(function() {
	$('th,td').css('color','blue').css('font-size',20);
	$('form').css('color','green').css('font-size',40);
	$('#submit').css('color','orange').css('font-size',20);
	$('#box').css('color','red').css('font-size',25);
});











