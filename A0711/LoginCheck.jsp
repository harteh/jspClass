<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginCheck.jsp</title>
</head>
<body>

<%
	String id = "pink";
	String pw = "1234";
	String name = "세종대왕";
	request.setCharacterEncoding("UTF-8");
	
	if(id.equals(request.getParameter("id")) &&
			pw.equals(request.getParameter("pwd"))) {
		
		//쿼리스트링
		response.sendRedirect("main.jsp?name="+
		URLEncoder.encode(name, "UTF-8"));
	} else {
		response.sendRedirect("res.jsp");
	}
%>



<%
	String aa = request.getParameter("aa");
%>
<!-- 
<p style="background:<%=aa %>">나는 <%=aa %>색을 좋아한다</p>
 -->
 
 
</body>
</html>