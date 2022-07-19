<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ReWriteForm</title>
	<style type="text/css">
		h1 {margin-bottom: 30px;}
		a {text-decoration: none;}
		table {width: 700px; border-collapse: collapse; margin-bottom: 20px;} 
		table tr { height: 100%; border-bottom: 1px solid #333; }
		table tr td:first-child{width: 100px; font-weight: bold; padding: 15px;}
		table tr td input { margin: auto 5px;}
		.title{ font-weight: bold;}
		.title td { text-align: center;}
	</style>
</head>
<body bgcolor="aliceblue">
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
%>

<h1>답글 쓰기</h1>

<form action="ReWriteProc.jsp" method="post">
<table>
	<tr>
		<td>작성자</td>
		<td><input name="writer"></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input name="subject"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input name="email"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input name="password"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea name="content" rows="3" cols="20"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="hidden" name="ref" value="<%=ref %>">
			<input type="hidden" name="re_step" value="<%=re_step %>">
			<input type="hidden" name="re_level" value="<%=re_level %>">
			<input type="submit" value="답글 등록">
			<input type="reset" value="새로작성">
		</td>
	</tr>
</table>
</form>

<button  onclick="location.href='BoardList.jsp'">글 전체 목록</button>
</body>
</html>