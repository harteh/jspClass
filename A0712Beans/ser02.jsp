<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ser02</title>
	<script type="text/javascript" src="ser02.js"></script>
</head>
<body>
	<form action="Hello" method="get" name="fr">
		아이디:<input type="text" name="id"><br>
		나이:<input type="text" name="age"><br>
		<input type="submit" value="전송" 
				onclick="return check()" >
	</form>
	<!-- 
		아이디와 나이 입력, 공백이면 alert
	 -->
</body>
</html>