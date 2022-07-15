<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MemberDel</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<h2>회원삭제</h2>
	<form action="DeleteProc.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><%=request.getParameter("id") %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="pass1">
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
				<input type="submit" value="회원 삭제">
			</td>
		</tr>
	</table>
	</form>
	<hr>
	
	<button onclick="location.href='MemberArray.jsp'">전체 회원</button>
</body>
</html>