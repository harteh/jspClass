<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test_Forward</title>
</head>
<body bgcolor="teal">
	<p>녹색 페이지</p>
	<jsp:forward page="test1_Forward.jsp">
		<jsp:param value="violet" name="color"/>
	</jsp:forward>
</body>
</html>