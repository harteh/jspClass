<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tour1</title>
</head>
<body>
	<h2>여행지 선택</h2>
	<!-- 
	<form action="tour2.jsp">
		<input type="radio" name="ko" value="제주">제주
		<input type="radio" name="ko" value="부산">부산
		<input type="radio" name="ko" value="강릉">강릉
		<input type="radio" name="ko" value="울산">울산
		<hr>
		<input type="radio" name="ov" value="홍콩">홍콩
		<input type="radio" name="ov" value="뉴욕">뉴욕
		<input type="radio" name="ov" value="도쿄">도쿄
		<input type="radio" name="ov" value="파리">파리
		<br>
		<input type="submit" value="선택">
	</form>
	 -->
	 
	<form action="tour2.jsp">
		<select name = "ko">
			<option value="제주">제주
			<option value="부산">부산
			<option value="강릉">강릉
		</select>
		<select name = "ov">
			<option value="홍콩">홍콩
			<option value="뉴욕">뉴욕
			<option value="도쿄">도쿄
		
		</select>
		<br>
		<input type="submit" value="선택">
	</form>
</body>
</html>