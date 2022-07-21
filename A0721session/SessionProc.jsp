<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SessionProc.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String Sid = request.getParameter("Sid");
	String Spw = request.getParameter("Spw");
	
	//받아온 값을 세션에 저장한다
	session.setAttribute("Sid", Sid);
	session.setAttribute("Spw", Spw);
	
	//세션 유지 시간 설정
	session.setMaxInactiveInterval(60);
	
%>

<h2>로그인 성공?</h2>
<p> 아이디는 <%=Sid %>이고 패스워드는 <%=Spw %> </p>
<a href="SessionProc2.jsp">다음 페이지</a>

</body>
</html>