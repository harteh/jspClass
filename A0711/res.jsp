<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>res</title>
	<style type="text/css">
		body {
			background-color: aliceblue;
			text-align: center;
		} 
	</style>
</head>
<body>
	<form action="LoginCheck.jsp" method="post">
		<label for="user">아이디 : </label>
		<input type="text" name="id" id="user"><br>
		
		<label for="userpw">비번 : </label>
		<input type="password" name="pwd" id="userpw"><br>
		
		<input type="submit" value="로그인">
	</form>
</body>
</html>