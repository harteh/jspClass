<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="pBean" class="bean.Person">
	<jsp:setProperty property="*" name="pBean"/>
</jsp:useBean>

<h3>등록한 정보</h3>
<jsp:getProperty property="name" name="pBean"/><br>
<jsp:getProperty property="nick" name="pBean"/><br>
<jsp:getProperty property="job" name="pBean"/><br>
<jsp:getProperty property="email" name="pBean"/>
<hr>

</body>
</html>