<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BoardForm</title>
	<style type="text/css">
		h1 {margin-bottom: 30px;}
	</style>	
</head>
<body bgcolor="aliceblue">

<h1>글쓰기</h1>
<form action="BoardWriteForm.jsp">

<p> 작성자 <input name="writer"> </p>
<p> 제목 <input name="subject"> </p>
<p> 이메일 <input name="email"> </p>
<p> 비밀번호 <input name="password"> </p>
<p> 내용 <textarea name="content" rows="3" cols="20"></textarea> </p>
<p>
	<input type="submit" value="글등록">
	<input type="reset" value="새로작성">
</p>
</form>
<button  onclick="location.href='BoardList.jsp'">글 전체 목록</button>

</body>
</html>