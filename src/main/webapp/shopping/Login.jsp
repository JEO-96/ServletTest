<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkName(){
	var n = document.getElementById("id").value;
	if(n.trim()==""){
		alert("이름을 입력하시오");
		return false;
	} else {
		document.fo.submit();
	}
}
</script>
</head>
<body>
<center>
<h1>로그인</h1>
<form action="setProduct.jsp" method="post" name="fo">
	<input type="text" name="name" id="id">
	<input type="button" value="로그인" onclick="checkName()">
</form>

</center>
</body>
</html>