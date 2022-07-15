<%@page import="bean.MemberDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinProc</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	//복수 선택 값을 배열에 저장
	String []hobby = request.getParameterValues("hobby");
	String str = "";
	
	//배열에 있는 내용을 하나의 문자열로 저장
	for(int i=0; i<hobby.length; i++){
		str += hobby[i]+" ";
	}
%>

<jsp:useBean id="memBean" class="bean.MemberBean">
	<jsp:setProperty property="*" name="memBean"/>
</jsp:useBean>

<%
	memBean.setHobby(str);

	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(memBean);
	
	//회원가입이 성공했다면 회원정보를 보여주는 페이지로 이동
	response.sendRedirect("MemberArray.jsp");
%>

<h1>오라클에 입력 완료</h1>

</body>
</html>