<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>third</title>
</head>
<body>
	<%=pageContext.getAttribute("name") %><br>
	<%=request.getAttribute("name") %><br>
	<%=session.getAttribute("name") %><br>
	<%=application.getAttribute("name") %><br>
	<p> third 페이지로 이동했습니다.</p>
	<a href="third.jsp">다른 페이지</a>
</body>
</html>