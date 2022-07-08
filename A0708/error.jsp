<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 현재 페이지가 에러페이지임을 설정 -->    
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error.jsp</title>
</head>
<body>

	<h1>이곳은 에러페이지입니다</h1>
	<p>다음과 같은 에러가 발생했습니다.</p>
<%= exception.getMessage() %>
</body>
</html>