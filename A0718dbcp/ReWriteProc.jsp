<%@page import="bean.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ReWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="boardbean" class="bean.BoardBean">
	<jsp:setProperty property="*" name="boardbean"/>
</jsp:useBean>
<%
	BoardDAO bdao = new BoardDAO();
	bdao.reWriteBoard(boardbean);
	
	response.sendRedirect("BoardList.jsp");
%>

</body>
</html>