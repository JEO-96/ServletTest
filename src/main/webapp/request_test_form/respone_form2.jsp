<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
window.onload = function(){
	var f = document.getElementById("fo");
	f.submit();
}
</script>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String job = request.getParameter("job");
String[] interest = request.getParameterValues("interest");
%>

<form id="fo" method="post" action="respone_form_end.jsp">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="job" value="<%=job%>">
<%
if(interest != null){
	for(String e : interest){ %>
		<input type="checkbox" name="interest" value="<%=e %>" style="visibility: hidden;" checked> 
<%
	}
}
%>
</form>
</body>
</html>