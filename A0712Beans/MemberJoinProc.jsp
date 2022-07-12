<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoinProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="sbean" class="co.bm.javabeans.StuBean">
	<jsp:setProperty property="*" name="sbean"/>
</jsp:useBean>
<!-- jsp 내용을 자바빈 클래스에 데이터를 매핑(넣어준다) -->

	<h3>아이디는 <jsp:getProperty property="id" name="sbean"/></h3>
	<h3>비밀번호는 <jsp:getProperty property="pass" name="sbean"/></h3>
	<h3>이메일는 <jsp:getProperty property="email" name="sbean"/></h3>
	<h3>전화번호 <%=sbean.getTel() %></h3>
	<h3>주소는 <%=sbean.getAddr() %></h3>
</body>
</html>