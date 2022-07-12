<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMember</title>
</head>
<body bgcolor="aliceblue">

	<!-- html의 name 값과 자바빈의 필드값이 일치해야한다 -->
	<form action="readMember.jsp" method="post" >
		이름 : <input type="text" name="name"><br>
		아이디 : <input type="text" name="userid"><br>
		별명 : <input type="text" name="nickname"><br>
		비밀번호 : <input type="text" name="pwd"><br>
		이메일 : <input type="text" name="email"><br>
		전화번호 : <input type="text" name="phone"><br>
		
		<input type="submit" value="전송"><br>
		<input type="reset" value="다시입력"><br>
	</form>

</body>
</html>