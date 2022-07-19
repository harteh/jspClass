<%@page import="bean.BoardBean"%>
<%@page import="bean.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UpdateForm.jsp</title>
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
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	
	BoardDAO bdao = new BoardDAO();
	BoardBean bean = bdao.oneBoard(num);
//	BoardBean bean = bdao.oneUpdateBoard(num);
%>
<h1>게시글 수정</h1>

<form action="UpdateProc.jsp" method="post">
<table>
	<tr>
		<td>글번호</td>
		<td><%=bean.getNum() %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=bean.getWriter() %></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input name="subject" value="<%=bean.getSubject() %>"></td>
	</tr>
	<tr>
		<td>조회수</td>
		<td><%=bean.getReadcount() %></td>
	</tr>
	<tr>
		<td>작성일</td>
		<td><%=bean.getReq_date() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea name="content" value="<%=bean.getContent() %>" rows="3" cols="20"></textarea></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input name="password" value="<%=bean.getPassword() %>"></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="hidden" name="num" value="<%=bean.getNum() %>">
			<input type="submit" value="글 수정" >
			<input type="button" value="글 삭제" onclick="location.href='DeleteForm.jsp?num=<%=bean.getNum() %>'">
		</td>
	</tr>
</table>
</form>

<button  onclick="location.href='BoardList.jsp'">글 전체 목록</button>
</body>
</html>