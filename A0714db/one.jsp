<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one</title>
</head>
<body>
	<jsp:forward page="two.jsp">
	      <jsp:param value="tom" name="name"/>
	      <jsp:param value="tennis" name="hobby"/>
	</jsp:forward>
</body>
</html>