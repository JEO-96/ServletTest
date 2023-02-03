<%@page import="java.io.PrintWriter"%>
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
String name = request.getParameter("name");
String job = request.getParameter("job");
String[] interest = request.getParameterValues("interest");
%>

<table border="1">
	<tr>
		<td>이름</td><td><%=name %></td>
	</tr>
	<tr>
		<td>직업</td><td><%=job %></td>
	</tr>
	<tr>
		<td>관심분야</td>
		<td>
		<%
	        for(int i=0;i < interest.length;i++){
	        %> <%=interest[i]%> <%
	      }
        %>
		</td>
	</tr>
</table>
<hr>
<h2>request 테스트 결과 - 2</h2>
<table border=0><tr><td>
1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %> <br>
2. 요청 메서드 : <%= request.getMethod() %> <br>
<%
	Cookie cookie[] = request.getCookies();
%>
3. <%= cookie[0].getName() %> 에 설정된 쿠키값 : <%=cookie[0].getValue() %><BR>
4. 프로토콜 : <%= request.getProtocol() %>
</td></tr>
</table>
</body>
</html>