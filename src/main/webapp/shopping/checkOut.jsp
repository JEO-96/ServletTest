<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

HashMap<String, Integer> map = (HashMap)session.getAttribute("productList");
%>
</head>
<body>
<centor>
<%



if(map == null){
	out.println("상품 목록 없음");
}else {
	Set<String> list = map.keySet();
	%> <form action="pop.jsp" method="post"> <%
	for(String productList:list){
		out.println(productList+": " + map.get(productList) + "개");
		%> <input type="text" name="<%=productList %>"><br> <%
	}
}
%>
<input type="submit" value="수정">
</form>
<input type="button" value="계속 쇼핑하기"
onclick="location.href='setProduct.jsp'">
<input type="button" value="로그아웃"
onclick="location.href='Logout.jsp'">


</centor>
</body>
</html>