<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String food = request.getParameter("food");
	String id = (String)session.getAttribute("li");
	
	if(id != null){
		food = "피자";
	}
%>
<p><%=id %>님 반갑습니다</p>
<p>좋아하는 음식은 <%=food %>입니다.</p>
</body>
</html>