<%@page import="java.util.Vector"%>
<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>allEmpList</title>
	<style type="text/css">
		table {
			width: 500px;
			border: 1px solid #333;
			border-collapse: collapse;
		}
		table tr { height: 70px; }
		table tr td { 
			border-bottom: 1px solid #333; 
			text-align: center;
		}
		button {
			width: 150px; height: 40px; margin: 20px 5px; 
			background: bisque;
			border: 1px solid #979797;
			cursor: pointer;
		}
	</style>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	EmplDAO edao = new EmplDAO();
	Vector<EmployeeBean> vec = edao.allEmpl();
%>
<h2>사원 전체 목록 출력</h2>
<table>
	<tr>
		<td>사원이름</td>
		<td>주소</td>
		<td>사회보장번호</td>
	</tr>
<%
	for(int i=0; i<vec.size(); i++){
		EmployeeBean eb = vec.get(i);
%>
	<tr>
		<td><a href="infoEmpl.jsp?name=<%=eb.getName() %>"><%=eb.getName() %></a></td>
		<td><%=eb.getAddr1() %></td>
		<td><%=eb.getSsn() %></td>
	</tr>
<%
	}
%>
	<tr>
		<td colspan="3">
			<!-- 신규사원등록 -->
			<button onclick="location.href='employee.jsp'">신규 사원 등록</button>
		</td>
	</tr>
</table>

</body>
</html>