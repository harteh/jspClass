<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one</title>
</head>
<body>
<%
	String uid = request.getParameter("id");
	String pwd = request.getParameter("pw");
%>
	<form action="two.jsp">
		id: <input type="text" name="id">
		pass: <input type="password" name="pw">
		
		<input type="submit" value="로그인">
	</form>
</body>
</html>