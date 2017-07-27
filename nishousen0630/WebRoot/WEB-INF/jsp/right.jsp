<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	function check() {
		var ename=$("#ename").val();
		var dname=$("#dname").val();
		$.ajax({
			url:"check.action?ename="+ename,
			type:"post",
			success:function(data){
				if(data==0){
					$(function(){
						$("#ename").val(ename+"_"+dname);
						$("#form").submit();
					});
				}else{
					return;
				}
			}
		});
	}
</script>
</head>
<body>
	<form action="insertEmpl.action" method="post" id="form">
		<table>
			<tr>
				<td>
					员工姓名:<input type="text" name="ename" id="ename">
				</td>
			</tr>
			<tr>	
				<td>
					入职时间:<input type="text"  name="sdate">
				</td>
			</tr>	
			<tr>
				<td>
					离职时间:<input type="text" name="edate">
				</td>
			</tr>	
			<tr>
				<td>
					员工介绍:<input type="text" name="econtext">
				</td>
			</tr>	
			<tr>
				<td>
					部门名称:<input type="text" name="dname" id="dname">
				</td>
			</tr>	
			<tr>
				<td>
					<input type="button" value="提交" onclick="check()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>