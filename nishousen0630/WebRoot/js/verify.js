function verify() {
	var userName = $("#userName").val();
	//alert("123");
	$.get("checkUser.action",{"userName":userName},callback);
}
function callback(data) {
		$("#check").html(data);
}