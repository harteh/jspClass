<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionProc2.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

//	String id = request.getParameter("id");
//	String pw = request.getParameter("pw");
	
	// 세션 받아오기
	String Sid = (String)session.getAttribute("Sid");
	String Spw = (String)session.getAttribute("Spw");
	
%>

<h2>로그인 성공2</h2>
<p>request 로 받으면 유효기간이 페이지 1만 되기 때문에 넘어온 값을 인식하지 못한다</p>

아이디는 <%=Sid %>이고 패스워드는 <%=Spw %>
</body>
</html>