<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		body {
			background-color: aliceblue;
			text-align: center;
		} 
	</style>
</head>
<body>

	<form method="post" action="LoginCheck.jsp">
		<input type="radio" name="aa" value="blue">blue
		<input type="radio" name="aa" value="yellow">yellow
		<input type="radio" name="aa" value="red">red
		<input type="radio" name="aa" value="orange">orange
		<br>
		<input type="submit" value="확인">
	</form>
	
	<p>나는 (선택한색)을 좋아한다.</p>
</body>
</html>