<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>review01</title>
</head>
<body bgcolor="aliceblue">

<h2>1부터 입력받은 숫자까지 출력하기</h2>
<form action="review02.jsp">
	숫자: <input type="number" name="num">
	<input type="submit">
</form>
<hr>

<h2>사이트 이동시키기</h2>
<form action="review02.jsp">
	<select name="aa">
		<option value="http://www.naver.com">네이버
		<option value="http://www.goole.com">구글
	</select>
	<input type="submit">
</form>
<hr>

<h2>회원가입 검증</h2>
<form action="review02.jsp">
	이름: <input name="name">
	<input type="submit">
</form>
<hr>

<h2>While문을 이용하여 1~10까지 합을 출력</h2>
<%
	int i=1;
	int sum=0;
	while(i<10){
		sum+=i;
		i++;
	}
	out.print("1부터 10까지의 합: "+sum);
%>
<hr>

<h2>좋아하는 색 출력</h2>
<form action="review02.jsp">
	이름: <input name="name">
	<select name="color">
		<option value="red">빨강
		<option value="yellow">노랑
		<option value="blue">파랑
		<option value="green">초록
	</select>
	<input type="submit">
</form>
<hr>

<h2>Forward 페이지 이동</h2>
<jsp:forward page="review02.jsp">
	<jsp:param value="book" name="name1"/>
	<jsp:param value='<%=URLEncoder.encode("책", "UTF-8") %>' name="name2"/>
</jsp:forward>
<hr>

</body>
</html>