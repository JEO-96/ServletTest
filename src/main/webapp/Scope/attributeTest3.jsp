<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

%>
<table border="1">
	<tr>
		<td colspan="2">애플리케이션 정보</td>
	</tr>
	<tr>
		<td>이름</td><td><%=application.getAttribute("name") %></td>
	</tr>
	<tr>
		<td>아이디</td><td><%=application.getAttribute("id") %></td>
	</tr>
	<tr>
		<td colspan="2">세션 정보</td>
	</tr>
	<tr>
		<td>이메일</td><td><%=session.getAttribute("email") %></td>
	</tr>
	<tr>
		<td>주소</td><td><%=session.getAttribute("address") %></td>
	</tr>
	<tr>
		<td>전화번호</td><td><%=session.getAttribute("tel") %></td>
	</tr>
</table>
</body>
</html>