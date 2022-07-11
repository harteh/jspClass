<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>act02_main</title>
</head>
<body bgcolor="teal">
	<h1>사용자 페이지</h1>
	<%=request.getParameter("id") %>님 환영합니다.
</body>
</html>