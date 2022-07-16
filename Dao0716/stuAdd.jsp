<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>stuAdd</title>
	<style type="text/css">
		table {width: 500px; border-collapse: collapse;}
		table tr { height: 25px; border-bottom: 2px solid #ccc;}
		table tr td {padding: 10px;}
	</style>
</head>
<body>

<h1>학생 신규 등록</h1>
<hr>

<form action="stuAddProc.jsp" method="post">
<table>
<tr>
	<th>학번</th>
	<td><input type="number" name="stu_no" required></td>
</tr>
<tr>
	<th>이름</th>
	<td><input name="stu_name" required></td>
</tr>
<tr>
	<th>학과</th>
	<td>
		<select name="stu_dept">
			<option value="기계">기계</option>
			<option value="전기전자">전기전자</option>
			<option value="컴퓨터공학">컴퓨터공학</option>
			<option value="프로그래밍">프로그래밍</option>
		</select>
	</td>
</tr>
<tr>
	<th>학년</th>
	<td>
		<input type="radio" name="stu_grade" value="1"> 1학년
		<input type="radio" name="stu_grade" value="2"> 2학년
		<input type="radio" name="stu_grade" value="3"> 3학년
	</td>
</tr>
<tr>
	<th>반</th>
	<td><input name="stu_class"></td>
</tr>
<tr>
	<th>성별</th>
	<td>
		<input type="radio" name="stu_gender" value="M"> 남자
		<input type="radio" name="stu_gender" value="F"> 여자
	</td>
</tr>
<tr>
	<th>키</th>
	<td><input name="stu_height"> cm</td>
</tr>
<tr>
	<th>몸무게</th>
	<td><input name="stu_weight"> kg</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value="학생등록">
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