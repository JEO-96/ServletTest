<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="footer2.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />	
</jsp:include>
</body>
</html>