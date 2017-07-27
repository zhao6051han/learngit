<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>八维信息管理系统主页面</title>
<link href="css/main_css.css" rel="stylesheet" type="text/css" />
<link href="css/iconfont.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.ztree.core.js"></script>
<script type="text/javascript">
function zTreeOnClick(event, treeId, treeNode) {
	if(treeNode.name == '添加员工') {
		$('#rightMain').attr("src", "right.action");
	}
	if(treeNode.name == '查询员工') {
		$('#rightMain').attr("src", "findEmpl.action");
	}
};

		var setting = {
				 data: {  
		                simpleData: {  
		                    enable: true,  
		                    idKey: "id",  
		                    pIdKey: "tid"
		                }  
		            },
		            callback: {
		        		onClick: zTreeOnClick
		        	}
		};
		$.ajax({
			url:"findAll.action",
			type:"post",
			success:function(data){
				$.fn.zTree.init($("#treeDemo"),setting,data);
			}
		});
	</script>
	<!--
		<input placeholder="" class="form-control" id="endtime"
				type="text" name="endtime" style="width: 90%"
				onFocus="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" />
	-->
</head>
<body onload="getDate01()">
	<div id="top">
		<div id="top_logo">
			 <span>员工管理</span><img alt="logo" src="images/logo.png" width="65" height="65" style="vertical-align:middle;">
		</div>
	</div>
	<div class="foot">员工管理系统</div>
	<div id="side">
		<div class="content_wrap">
			
		</div>
	</div>
	<script>
    	function  getDate01(){
			var time = new Date();
			document.getElementById("day_day").innerHTML =  time.getFullYear()
    +"年"+(time.getMonth()+1)+"月"+time.getDate()
    +"日"+time.getHours()+"时"+time.getMinutes()
    +"分";
		}
    </script>
	<div id="top_nav">
		<div class="time">
			<div class="zTreeDemoBackground left">
				<ul id="treeDemo" class="ztree"></ul>
			</div><i class="icon iconfont">&#xe61a; 当前时间：</i> <span id="day_day"></span>
		</div>
	</div>
	<div id="main">
		<iframe name="right" id="rightMain" src="" frameborder="no"
			scrolling="auto" width="100%" height="100%" allowtransparency="true" />
	</div>
</body>
</html>