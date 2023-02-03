<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%response.setContentType("text/html;charset=utf-8"); %>
<div align="center">
	<h1>계산기</h1>
	<hr>
	<form action="/ServletTest/test" method="post">
	<input type="text" size="5" name="num1">
	<select name="calc">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">*</option>
		<option value="/">/</option>
	</select>
	<input type="text" size="5" name="num2">
	<input type="submit" value="계산">
	<input type="reset" value="다시입력">
	<!-- 주석 -->
	<%-- <!-- 주석 --> --%>
	</form>
</div>
</body>
</html>