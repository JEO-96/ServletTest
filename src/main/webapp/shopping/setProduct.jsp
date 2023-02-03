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
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");

if(name != null){
	session.setAttribute("name", name);
}


%>

<h1>상품선택</h1>
<hr>
<%=session.getAttribute("name") %>님이 로그인 한 상태 입니다.
<hr>
<form action="add.jsp" method="post">
<select name="product">
<option value="파인애플">파인애플</option>
<option value="귤">귤</option>
<option value="사과">사과</option>
<option value="배">배</option>
</option>
</select>
<input type="submit" value="장바구니에 담기">
</form>
<a href="checkOut.jsp">계산</a>
</center>
</body>
</html>