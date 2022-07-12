<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tour2</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String ko = request.getParameter("ko");
	String ov = request.getParameter("ov");
%>
<p> 국내 여행 : <%=ko %> </p>
<p> 해외 여행 : <%=ov %> </p>
<a href="javascript:history.go(-1)">다시 조회</a>
<!-- <a href="tour1.jsp">다시 조회</a>  -->
</body>
</html>