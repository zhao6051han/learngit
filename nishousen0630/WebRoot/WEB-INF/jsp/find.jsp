<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="findEmpl.action" method="post">
		<table>
			<tr>
				<td>
					部门名称:<input type="text" name="dname">
				</td>
				<td>
					入职时间:<input type="text" name="sdate">
				</td>
				<td>
					离职时间:<input type="text" name="edate">
				</td>
				<td>
					<input type="submit" value="查询">
				</td>
			</tr>
		</table>
	</form>
	<c:if test="${elist!=null }">
		<table border="1">
			<tr>
				<th>员工姓名</th>
				<th>入职时间</th>
				<th>离职时间</th>
				<th>员工介绍</th>
				<th>部门名称</th>
			</tr>
			<c:forEach items="${elist }" var="e">
				<tr>
					<td>
						${e.ename }
					</td>
					<td>
						<fmt:formatDate value="${e.sdate }" pattern="yyyy-MM-dd"/>
					</td>
					<td>
						<fmt:formatDate value="${e.edate }" pattern="yyyy-MM-dd"/>
					</td>
					<td>
						${e.econtext }
					</td>
					<td>
						${e.dname }
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>