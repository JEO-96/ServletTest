<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<html>
<head>
<title>Scriptlet Test2</title>
<style>
table, td, th {
	border : 1px solid black;
	border-collapse : collapse;
	text-align: center;
};
</style>
</head>
<div align="center">
<body>
<h1 align="center">구구단</h1>
<table>
<%
for(int i = 0;i < 10; i++){
	%> <tr> <%
	for(int j = 1; j < 10; j++){
		if(i==0){
			if(j==1){
				%> <td> </td> <%
			} else {
				%> <td bgcolor="#44DDDD"><%=j %>단 </td> <%
			} 
			
		} else {
			if(j==1){
				%> <td bgcolor="#AAFF99"><%=i %></td> <%
			} else {
				%> <td bgcolor="#E0E0F8" width="100"> <%=j%> X <%=i %> =  <%=(i*j) %> </td> <%	
			}
			
		}
	}
	%> </tr> <%
}
%>

</table>
</div>
</body>
</html>