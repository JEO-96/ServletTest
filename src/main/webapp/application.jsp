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
<%
	// isNew() 메서드를 이용해 최초세션설정을 확인하고 있다.
	if(session.isNew()){
		out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
		session.setAttribute("login", "홍길동");
		session.setAttribute("count", 0);
	}
%>
<h2>application 예제</h2>
<hr>
1. 서버정보 : <%=application.getServerInfo() %><br>
2. 서블릿 API 버전정보 : <%= application.getMajorVersion() +"."+application.getMinorVersion() %> <br>
3. application.jsp 파일의 실제경로 :<%= application.getRealPath("application.jsp") %> <br>
<a href="application_result.jsp">확인하기</a>
</center>

</body>
</html>