<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session01</title>
</head>
<body>
<%
	String name = "세종대왕";

	// 세션을 이용해서 데이터를 유지
	session.setAttribute("name1", name);
	
	//세션 유지 시간
	//session.setMaxInactiveInterval(60*60);	//60분. 초단위
	session.setMaxInactiveInterval(10);
%>

<a href="session.jsp?name=<%=name %>">페이지 이동</a>
<!-- 
<a href="session.jsp?name=<%=URLEncoder.encode(name, "UTF-8")%>">session</a>
 -->
</body>
</html>