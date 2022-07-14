<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>movie2</title>
</head>
<body bgcolor="beige">

	<h2>영화 정보 출력</h2>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="movieB" class="co.bm.movie.MovieBean">
		<jsp:setProperty property="*" name="movieB"/>
	</jsp:useBean>
	<p>영화제목 : <jsp:getProperty property="title" name="movieB"/></p>
	<p>가격 : <%=movieB.getPrice() %>원</p>
	<p>감독 : <jsp:getProperty property="director" name="movieB"/></p>
	<p>시놉시스 : <%=movieB.getSynopsis() %></p>
	<p>장르 : <jsp:getProperty property="genre" name="movieB"/></p>
</body>
</html>