<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="myMember" class="co.bm.javabeans.MemberBean" >
	<jsp:setProperty property="*" name="myMember"/>
</jsp:useBean>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>readMember</title>
</head>
<body>
	이름: <jsp:getProperty property="name" name="myMember"/><br>
	아이디: <jsp:getProperty property="userid" name="myMember"/><br>
	별명: <jsp:getProperty property="nickname" name="myMember"/><br>
	비밀번호: <jsp:getProperty property="pwd" name="myMember"/><br>
	이메일: <jsp:getProperty property="email" name="myMember"/><br>
	연락처: <jsp:getProperty property="phone" name="myMember"/>
</body>
</html>