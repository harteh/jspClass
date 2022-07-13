<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>favo02</title>
</head>
<body bgcolor="beige">

<% request.setCharacterEncoding("UTF-8");  %>
<jsp:useBean id="fr1" class="co.bm.p1.favoBean">
	<jsp:setProperty property="*" name="fr1"/>
</jsp:useBean>

<p>
	<jsp:getProperty property="color" name="fr1"/>을 좋아하고,
	<jsp:getProperty property="music" name="fr1"/>음악을 좋아합니다.
</p>

</body>
</html>