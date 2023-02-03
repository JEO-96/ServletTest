<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, td, th {
	border : 1px solid black;
};
</style>
</head>
<body>
<%
	String select = request.getParameter("page");
	if(select==null){
		select = "newitem";
	}
%>
<table style="width: 70%;">
	<tr>
		<td colspan="2"><!-- top.jsp -->
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td><!-- left -->
			<jsp:include page="left.jsp">
				<jsp:param value="신상품 목록입니다." name="new_item"/>
			</jsp:include>
		</td><!-- right -->
			<td><jsp:include page='<%=select+".jsp"%>'/></td>
	</tr>
	<tr><!-- bottom.jsp -->
		<td align="center" colspan="2"">
			<jsp:include page="bottom.jsp"></jsp:include>
		</td>
	</tr>
</table>
</body>
</html>