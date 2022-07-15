<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>employee</title>
	<style type="text/css">
		table {
			width: 500px;
			border: 1px solid #333;
			border-collapse: collapse;
		}
		table tr { height: 100px; }
		table tr td { border-bottom: 1px solid #333; text-align: center}
		table tr td:first-child { width: 150px;}
		table tr td:nth-child(2){ width: 350px;}
		table tr td input { width: 300px; height: 50px; }
		button,
		input[type=submit],
		input[type=reset] {
			width: 100px; height: 40px; margin: 20px 5px; 
			background: bisque;
			border: 1px solid #979797;
			cursor: pointer;
		}
	</style>
</head>
<body>

<!-- 사원 등록 -->
<h1 style="margin-left:150px">신규 사원 등록</h1>
<form action="addEmpProc.jsp" method="post">
<table>
	<tr>
		<td>사원이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type="text" name="addr1"></td>
	</tr>
	<tr>
		<td>사회보장번호</td>
		<td><input type="text" name="ssn"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="사원 등록">
			<input type="reset" value="다시 입력">
		</td>
	</tr>
</table>
</form>

<!-- 사원 전체 조회 -->
<button onclick="location.href='allEmpList.jsp'">사원 전체목록</button>
</body>
</html>