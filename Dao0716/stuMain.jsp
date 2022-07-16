<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stuMain</title>
</head>
<body>

<h1>학생 관리 메인 페이지</h1>
<hr>
<p>학생 전체 목록 보기  <button onclick="location.href='stuAllList.jsp'">전체 학생 목록</button></p>
<p>학생 등록 페이지 보기  <button onclick="location.href='stuAdd.jsp'">신규등록</button></p>
<hr>

<form action="stuInfo.jsp" method="get">
학번으로 검색 : <input name="stu_no" >
<input type="submit" value="검색">
</form>

</body>
</html>