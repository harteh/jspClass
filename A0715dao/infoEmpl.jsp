<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>infoEmpl</title>
	<style type="text/css">
		table {
			width: 500px;
			border: 1px solid #333;
			border-collapse: collapse;
		}
		table tr { height: 70px; }
		table tr td { border-bottom: 1px solid #333; text-align: center}
		table tr td:first-child { width: 150px;}
		table tr td:nth-child(2){ width: 350px;}
		button{
			width: 120px; height: 40px; margin: 20px 5px; 
			background: bisque;
			border: 1px solid #979797;
			cursor: pointer;
		}
	</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	
	EmplDAO edao = new EmplDAO();
	EmployeeBean eb = edao.infoEmpl(name);
%>
	<h2><%=name %> 사원 개인 정보 출력</h2>
	<table>
		<tr>
			<td>사원이름</td>
			<td><%=eb.getName() %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=eb.getAddr1() %></td>
		</tr>
		<tr>
			<td>사회보장번호</td>
			<td><%=eb.getSsn() %></td>
		</tr>
		<tr>
			<td colspan="2">
				<button onclick="location.href='updateEmp.jsp?name=<%=eb.getName() %>'">사원 정보 수정</button>
				<button onclick="location.href='delEmp.jsp?name=<%=eb.getName() %>'">사원 탈퇴</button>
				<button onclick="location.href='allEmpList.jsp'">사원 전체목록</button>
			</td>
		</tr>
	</table>

</body>
</html>