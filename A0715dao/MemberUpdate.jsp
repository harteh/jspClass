<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MemberUpdate</title>
</head>
<body bgcolor="beige">
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");	// 받아온 id 값
	
	MemberDAO mdao = new MemberDAO();
	MemberBean mb = mdao.oneMember(id);
%>
	<h2><%=id %> 회원 정보 수정하기</h2>
	
	<form action="UpdateProc.jsp" method="post">
	<table width="500" border="1">
	<tr height="50">
		<td width="150" align="center"> 아이디</td>
		<td width="350" align="center"><%=mb.getId() %></td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 이메일</td>
		<td width="350" align="center">
		<input type="email" name="email" value="<%=mb.getEmail() %>"></td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 전화번호</td>
		<td width="350" align="center">
			<input type="tel" name="tel" value="<%=mb.getTel() %>">
		</td>
	</tr>
		
	<tr height="50">
		<td width="150" align="center"> 당신의관심분야</td>
		<td width="350" align="center">
			<input type="text" name="hobby" value="<%=mb.getHobby() %>">   
		</td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 당신의연령은</td>
		<td width="350" align="center">
			<input type="text" name="age" value="<%=mb.getAge() %>">  
		</td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 하고싶은말</td>
		<td width="350" align="center">
			<textarea rows="5" cols="40" name="info" ><%=mb.getAge() %></textarea>
		</td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 패스워드</td>
		<td width="350" align="center">
			<input type="password" name="pass1">
		</td>
	</tr>
	
	<tr height="50">
		<td align="center" colspan="2">
			<input type="hidden" name="id" value="<%=mb.getId() %>">
			<input type="submit" value="회원 정보 수정">
		</td>
	</tr>
	</table>
	</form>
	
	<hr>
	<button onclick="location.href='MemberArray.jsp'">회원 전체 목록보기</button>
</body>
</html>