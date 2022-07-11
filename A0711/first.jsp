<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	pageContext.setAttribute("name", "세종대왕");
	request.setAttribute("name", "태조");
	session.setAttribute("name", "정조");
	application.setAttribute("name", "연산군");
	
	System.out.println(pageContext.getAttribute("name"));
	System.out.println(request.getAttribute("name"));
	System.out.println(session.getAttribute("name"));
	System.out.println(application.getAttribute("name"));
	
	request.getRequestDispatcher("second.jsp").forward(request, response);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
</head>
<body>
</body>
</html>