<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addEmpProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="eBean" class="bean.EmployeeBean">
	<jsp:setProperty property="*" name="eBean"/>
</jsp:useBean>
<%
	EmplDAO edao = new EmplDAO();
	edao.addEmpl(eBean);	
	//입력 폼에서 받아온 정보(자바빈)을 DAO로 넘겨서 insert 한다
	
	response.sendRedirect("allEmpList.jsp");
	//사원 등록 성공 시 전체 사원 목록으로 이동시킨다.
%>
<h2>사원 등록 처리 완료</h2>

</body>
</html>