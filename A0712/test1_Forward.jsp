<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1_Forward</title>
</head>
<%
	String color1 = request.getParameter("color");
%>
<body bgcolor='<%=color1 %>'>
	<p>이동된 보라색 페이지</p>
	<%=color1 %>
</body>
</html>