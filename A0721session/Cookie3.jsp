<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cookie3</title>
</head>
<body>
<%
	Cookie c = new Cookie("id", "");
	c.setMaxAge(0);		//쿠키 유효시간 만료시킴
	response.addCookie(c);
%>
<h2>쿠키 삭제</h2>
<a href="CookieTwo.jsp">쿠키 삭제 확인</a>
</body>
</html>