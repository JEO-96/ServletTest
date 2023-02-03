<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>application 예제</h1>
<hr>
username 에 설정된 값은 : <%=session.getAttribute("login") %> <br>
<% 
int count = Integer.parseInt(session.getAttribute("count").toString());
count ++;
session.setAttribute("count", count);
%>
count : <%=session.getAttribute("count")  %>
</center>
</body>
</html>