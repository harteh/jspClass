<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style> body {background-color: aliceblue;} </style>
</head>
<body>
	<form action="join.jsp" >
		<h1>커피메뉴</h1>
		<input type="radio" name="menu" value="ame">아메리카노(4000원)<br>
		<input type="radio" name="menu" value="latte">카페라떼(4500원)<br>
		<input type="radio" name="menu" value="chino">카푸치노(4500원)<br>
		<input type="radio" name="menu" value="fra">프라푸치노(7500원)<br>
		
		수량: <input type="number" name="number"><br>
		입금액: <input type="text" name="text"><br>
		<input type="submit" value="주문">
	
	</form>
</body>
</html>