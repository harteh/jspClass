<%@page import="bean.StuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>stuAddProc.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="sb" class="bean.StudentBean">
	<jsp:setProperty property="*" name="sb"/>
</jsp:useBean>
<%
	StuDAO sda = new StuDAO();
	sda.addStu(sb);
	
	response.sendRedirect("stuAllList.jsp");
%>

<h1>학생 등록 proc</h1>
</body>
</html>