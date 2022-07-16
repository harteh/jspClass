<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>stuUdateProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String stuNo = request.getParameter("stu_no");
%>
<jsp:useBean id="sBean" class="bean.StudentBean">
	<jsp:setProperty property="*" name="sBean"/>
</jsp:useBean>
<%
	
	StuDAO sdao = new StuDAO();
	
	sdao.updateStu(sBean);
	
	response.sendRedirect("stuAllList.jsp");
%>
<h1>학생정보수정 완료</h1>
</body>
</html>