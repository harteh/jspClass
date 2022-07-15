<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MemberIn</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");	// 받아온 id 값
	
	MemberDAO mdao = new MemberDAO();
	MemberBean mb = mdao.oneMember(id);
%>
	<h2><%=id %> 회원 정보</h2>
	<table width="600" border="1">
	<tr height="20">
		<td width="300" align="center"><%=mb.getId() %></td>
	</tr>
	<tr height="50">
		<td width="300" align="center">
			<%=mb.getPass1() %><br>
			<%=mb.getEmail() %><br>
			<%=mb.getTel() %><br>
			<%=mb.getHobby() %><br>
			<%=mb.getJob() %><br>
			<%=mb.getAge() %><br>
			<%=mb.getInfo() %>
		</td>
	</tr>
	
	<tr height="50">
		<td width="300" align="center">
			<button onclick="location.href='MemberUpdate.jsp?id=<%=mb.getId() %>'">회원정보수정</button>
			<button onclick="location.href='MemberDel.jsp?id=<%=mb.getId() %>'">회원탈퇴</button>
		</td>
	</tr>
	<tr height="50">
		<td width="300" align="center">
			<button onclick="location.href='MemberArray.jsp'">회원 전체목록</button>
			<button onclick="location.href='memberJoin.jsp'">회원가입</button>
		</td>
	</tr>
	</table>
	
</body>
</html>