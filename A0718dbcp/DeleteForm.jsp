<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DeleteForm</title>
	<style type="text/css">
		h1 {margin-bottom: 30px;}
		a {text-decoration: none;}
		table {width: 700px; border-collapse: collapse; margin-bottom: 20px;} 
		table tr { height: 100%; border-bottom: 1px solid #333; }
		table tr td:first-child{width: 100px; font-weight: bold; padding: 15px;}
		table tr td input { margin: auto 5px;}
	</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	
	BoardDAO bdao = new BoardDAO();
	BoardBean bean = bdao.oneBoard(num);
%>
<h1>게시글 삭제</h1>
<form action="DeleteProc.jsp" method="post">
	<table>
		<tr>
			<td>작성자</td>
			<td><%=bean.getWriter() %></td>
		</tr>
		<tr>
			<td>글제목</td>
			<td><%=bean.getSubject() %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="hidden" name="num" value="<%=num %>">
				<input type="submit" value="글 삭제" >
			</td>
		</tr>
	</table>
</form>

<button  onclick="location.href='BoardList.jsp'">글 전체 목록</button>
</body>
</html>