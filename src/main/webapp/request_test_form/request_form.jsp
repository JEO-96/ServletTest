<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language=javascript>
	document.cookie = "test=OK.";
</script>
</head>
<body>
	<h1>request 테스트 폼</h1>
	<hr>
	<form action="respone_form3.jsp" method="post">
		<table border="1">
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="전문직">전문직</option>
						<option value="생산직">생산직</option>
						<option value="사무직">사무직</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td>
					<input type="checkbox" value="정치" name="interest">정치
					<input type="checkbox" value="사회" name="interest">사회
					<input type="checkbox" value="정보통신" name="interest">정보통신
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" >
					<input type="submit" value="확인">
					<input type="reset" value="취소">
				</td>				
			<tr>
		</table>
	</form>
</body>
</html>