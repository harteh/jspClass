<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MemberArray</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	//모든 회원 정보 가져옴
	MemberDAO mdao = new MemberDAO();
	//가변길이인 vector를 이용하여 데이터를 저장한 후
	Vector<MemberBean> vec=null; 
	vec = mdao.allSelectMember();
	
	MemberBean mb=null;
	
%>

	<h2>전체 회원 목록</h2>
	
	<table width="600" border="1">
	<tr height="20">
		<td width="150" align="center"> 아이디</td>
		<td width="150" align="center"> 이메일</td>
		<td width="150" align="center"> 관심분야</td>
		<td width="150" align="center"> 직업</td>
	</tr>
<%
	for(int i=0; i<vec.size(); i++){
		mb = vec.get(i);

%>		
	<tr height="50">
		<td width="350" align="center"><%=mb.getId() %></td>
		<td width="350" align="center"><%=mb.getEmail() %></td>
		<td width="350" align="center"><%=mb.getHobby() %></td>
		<td width="350" align="center"><%=mb.getJob() %></td>
		
	</tr>
<%
	}
%>
	</table>

</body>
</html>