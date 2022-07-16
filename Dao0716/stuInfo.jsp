<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>stuInfo</title>
	<style type="text/css">
		table {width: 500px; border-collapse: collapse;}
		table tr { height: 25px; border-bottom: 2px solid #ccc;}
		table tr td {padding: 10px;}
	</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	StuDAO sdao = new StuDAO();
	int stu_no = Integer.parseInt(request.getParameter("stu_no"));	//학번으로 조회
	StudentBean sb = sdao.stuInfo(stu_no);
%> 
<h1><%=stu_no %> 학생 개인 정보</h1>
<hr>

<form action="stuUdateProc.jsp" method="post">
<table>
<tr>
	<th>학번</th>
	<td><%=sb.getStu_no() %></td>
</tr>
<tr>
	<th>이름</th>
	<td><input name="stu_name" value="<%=sb.getStu_name() %>"></td>
</tr>
<tr>
	<th>학과</th>
	<td>
		<input name="stu_dept" value="<%=sb.getStu_dept() %>">
	</td>
</tr>
<tr>
	<th>학년</th>
	<td>
		<input name="stu_grade" value="<%=sb.getStu_grade() %>">
	</td>
</tr>
<tr>
	<th>반</th>
	<td><input name="stu_class" value="<%=sb.getStu_class() %>"></td>
</tr>
<tr>
	<th>성별</th>
	<td>
		<input name="stu_gender" value="<%=sb.getStu_gender() %>">
	</td>
</tr>
<tr>
	<th>키</th>
	<td><input name="stu_height" value="<%=sb.getStu_height() %>"> cm</td>
</tr>
<tr>
	<th>몸무게</th>
	<td><input name="stu_weight" value="<%=sb.getStu_weight() %>"> kg</td>
</tr>
<tr>
	<td colspan="2">
	<input type="hidden" name="stu_no" value="<%=sb.getStu_no() %>">
		<input type="submit" value="학생정보수정">
		<input type="reset" value="다시입력">
	</td>
</tr>
</table>
</form>
<hr>

<p>학생 관리 메인 페이지  <button onclick="location.href='stuMain.jsp'">메인</button></p>
<p>학생 전체 목록 보기  <button onclick="location.href='stuAllList.jsp'">전체 학생 목록</button></p>


</body>
</html>