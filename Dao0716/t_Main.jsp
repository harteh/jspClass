<%@page import="java.util.*"%>
<%@page import="bean.T_userBean"%>
<%@page import="bean.T_userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>t_Main</title>	
	<style type="text/css">
		table {width: 600px; border-collapse: collapse;}
		table tr { height: 25px; border-bottom: 2px solid #ccc;}
		table tr td {padding: 10px;}
		h1 {margin-bottom: 30px;}
	</style>
</head>
<body>

<h1>메인 페이지</h1>
<hr>

<%
	request.setCharacterEncoding("UTF-8");
	T_userDAO tuDAO = new T_userDAO();
	ArrayList<T_userBean> tuB = tuDAO.getUserList();
%>
<h2>회원 전체 목록</h2>
<table>
	<tr>
		<th>NO</th> <th>아이디</th>  
		<th>생년월일</th><th>닉네임</th>
		<th>가입일</th> <th>전자지갑</th> 
	</tr>
<%
	for(int i=0; i<tuB.size(); i++){
		T_userBean tb = new T_userBean();
		tb = tuB.get(i);
%>
	<tr>
		<td><%=tb.getUser_no() %></td>
		<td><%=tb.getUser_id() %></td>
		<td><%=tb.getUser_bir() %></td>
		<td><%=tb.getUser_nick() %></td>
		<td><%=tb.getUser_creday() %></td>
		<td><%=tb.getWal_no() %></td>
	</tr>
<%		
	}
%>
</table>

</body>
</html>