<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie1</title>
</head>
<body bgcolor="aliceblue">

	<h2>영화 정보 입력</h2>
	<form action="movie2.jsp" method="post">
		영화제목: <input type="text" name="title"><br>
		가격: <input type="text" name="price"><br>
		감독: <input type="text" name="director"><br>
		시놉시스: <textarea name="synopsis" rows="2" cols="20"></textarea><br>
		장르: <select name="genre">
			<option value="액션">액션</option>
			<option value="드라마">드라마</option>
			<option value="공포">공포</option>
		</select><br>
		<input type="submit">
	</form>
	<hr>
	
</body>
</html>