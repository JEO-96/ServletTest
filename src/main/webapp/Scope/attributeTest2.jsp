<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<%
request.setCharacterEncoding("UTF-8");

// 이메일, 주소, 전화번호를 getParameter() 메소드를 사용해 받아왔다.
String email=request.getParameter("email");
String address=request.getParameter("address");
String tel=request.getParameter("tel");

//받아온 파라미터 값들을 session영역에 setAttribute()메소드를 사용해 등록
session.setAttribute("email", email);
session.setAttribute("address", address);
session.setAttribute("tel", tel);

//application 영역에 등록된 속성을 getAttribute() 메소드를 사용해 읽어들였다.
String name=(String)application.getAttribute("name");
%>
<h3><%=name %>님의 정보가 모두 저장되었습니다.</h3>
<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>