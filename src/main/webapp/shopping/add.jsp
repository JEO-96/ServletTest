<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
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
String product = request.getParameter("product");
HashMap<String, Integer> list = (HashMap)session.getAttribute("productList");
if(list==null){
	list = new HashMap<String, Integer>();
}
if(list.containsKey(product)){
	int count = list.get(product);
	list.replace(product, count + 1);
} else{
	list.put(product, 1);
}

session.setAttribute("productList", list);
%>
<script type="text/javascript">
	alert('<%=product%> (이)가 추가되었습니다.');
	history.go(-1);
</script>

</body>
</html>