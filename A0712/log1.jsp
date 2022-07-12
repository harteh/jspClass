<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>log1</title>
</head>
<body>
<h1>로그인 인증처리</h1>
<p>
아이디, 암호 입력받는 로그인 폼[log1.jsp](Log.jsp)<br>
로그인 성공여부 확인[log1-m.jsp]<br>
로그인에 성공을 햇을 때[log1_suc.jsp] (suc.jsp로) 실패했을 때<br>
다시 로그인 폼으로 돌아가는 로그인 인증 처리 페이지를[log1_fru.jsp] (fru.jsp)에 작성해라.<br>

sendRedirect사용<br>
성공했을 때 [log1_suc]suc.jsp파일에 길동님~ 환영합니다.
</p>
<form action="log1-m.jsp">
	아이디: <input name="id"><br>
	비밀번호: <input type="password" name="pw"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>