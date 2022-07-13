<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>serRead</title>
</head>
<body bgcolor="beige">

<%
	request.setCharacterEncoding("UTF-8");
	String gen = request.getParameter("gender");
	
	if(gen.equals("m")){
		out.print("man");
	} else {
		out.print("women");
	}
%>

</body>
</html>