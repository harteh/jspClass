<%@page import="bean.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BoardWriteForm</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="boardBean" class="bean.BoardBean">
	<jsp:setProperty property="*" name="boardBean"/>
</jsp:useBean>
<%
	BoardDAO bdao = new BoardDAO();
	bdao.insertBoard(boardBean);
	
	response.sendRedirect("BoardList.jsp");
%>

<h1>오라클에 입력 완료</h1>
</body>
</html>