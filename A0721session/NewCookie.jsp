<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NewCookie.jsp</title>
</head>
<body>

<%
	// 1.쿠키 객체 생성 
	Cookie c = new Cookie("id", "bm");
	//2.유효기간
	c.setMaxAge(60*3);
	//클라이언트에 전송
	response.addCookie(c);
	
	response.addCookie(new Cookie("pw", "1234"));
	response.addCookie(new Cookie("age", "24"));

%>

<h2>쿠키 객체 생성</h2>
</body>
</html>