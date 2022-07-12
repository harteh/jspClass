<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan</title>
</head>
<body>
<%
	int gu = Integer.parseInt(request.getParameter("gugu"));

	for(int j=1; j<=9; j++){
		out.println(gu +"*"+ j +"="+ gu*j );
	}
%>
</body>
</html>