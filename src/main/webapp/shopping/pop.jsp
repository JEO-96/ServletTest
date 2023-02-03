<%@page import="java.util.HashMap"%>
<%@page import="java.util.Set"%>
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
response.setCharacterEncoding("UTF-8");
HashMap<String, Integer> map = (HashMap)session.getAttribute("productList");
	for(String key : map.keySet()){
		
		String countStr = request.getParameter(key);
		if (countStr!=""){
			int count = Integer.parseInt(countStr);
			if (count <= 0) {
				map.remove(key);
			} else {
				map.replace(key, count);			
			}
		}
	}


response.sendRedirect("checkOut.jsp");
%>
</body>
</html>