<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LoginProc</title>
</head>
<body>
<%
	String id="bm";
	String pw="1234";
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw")) ){
		//로그인 성공
		session.setAttribute("user", id);
		response.sendRedirect("LoginProc2.jsp");
	}
	else {
		//로그인 실패
		response.sendRedirect("LoginFrom.jsp");
	}
%>
</body>
</html>