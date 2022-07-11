<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name1 = request.getParameter("name");
	String name2 = (String)session.getAttribute("name1");
%>

<p><%=name1 %>님 반갑습니다</p>
<p><%=name2 %>님 로그인 됐습니다.</p>
</body>
</html>