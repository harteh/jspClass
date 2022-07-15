<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>updateEmpProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
%>
<jsp:useBean id="ebean" class="bean.EmployeeBean">
	<jsp:setProperty property="*" name="ebean"/>
</jsp:useBean>
<%
	EmplDAO edao = new EmplDAO();
	edao.updateEmpl(ebean);
	response.sendRedirect("allEmpList.jsp");
%>
<h2><%=name %> 회원 정보가 수정되었습니다.</h2>
</body>
</html>