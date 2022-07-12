<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>isNaN2</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("number"));

	for(int i=1; i<=num; i++){
		out.println(i +", ");
	}
%>
</body>
</html>