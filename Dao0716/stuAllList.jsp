<%@page import="java.util.Vector"%>
<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>stuAllList</title>
	<style type="text/css">
		table {width: 600px; border-collapse: collapse;}
		table tr { height: 25px; border-bottom: 2px solid #ccc;}
	</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	StuDAO sdao = new StuDAO();
	Vector<StudentBean> vec = sdao.getStulist();
%>
<h1>전체 학생 목록</h1>
<table>
	<tr>
		<th>학번</th> <th>이름</th> <th>학과</th> <th>학년</th><th>반</th>
		<th>성별</th> <th>키</th> <th>몸무게</th>
	</tr>
<%
	for(int i=0; i<vec.size(); i++){
		StudentBean sb = new StudentBean();
		sb = vec.get(i);
%>
	<tr>
		<td><a href="stuInfo.jsp?stu_no=<%=sb.getStu_no() %>"><%=sb.getStu_no() %></a></td>
		<td><%=sb.getStu_name() %></td>
		<td><%=sb.getStu_dept() %></td>
		<td><%=sb.getStu_grade() %></td>
		<td><%=sb.getStu_class() %></td>
		<td><%=sb.getStu_gender() %></td>
		<td><%=sb.getStu_height() %></td>
		<td><%=sb.getStu_weight() %></td>
	</tr>
<%		
	}
%>
</table>

<p>학생 관리 메인 페이지  <button onclick="location.href='stuMain.jsp'">메인</button></p>
<p>학생 등록 페이지 보기  <button onclick="location.href='stuAdd.jsp'">신규등록</button></p>

</body>
</html>