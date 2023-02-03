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

String strInterest = String.join(",", interest);
%>
<a href="respone_form_end.jsp?name=<%=name %>&job=<%=job %>&interest=<%=strInterest %>">전달하기</a>

</form>
</body>
</html>