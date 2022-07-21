<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CookieTwo</title>
</head>
<body>
<%
	Cookie[] co = request.getCookies();
	for(Cookie c : co){
		out.print(c.getValue()+" / "+c.getValue());
	}
%>

<h2>쿠키 받아오기</h2>
</body>
</html>