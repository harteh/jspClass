<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LoginProc2</title>
</head>
<body>
<%
	String user2 = (String)session.getAttribute("user");

	if(user2 == null){
		response.sendRedirect("LoginFrom.jsp");
	}
	else{
%>

	<h3><%=user2 %> 로그인 성공 </h3>

	<form action="Logout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>

<%		
	}
%>


</body>
</html>