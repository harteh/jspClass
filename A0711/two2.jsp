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
	int age = Integer.parseInt(request.getParameter("age"));
	if(age <15){
%>
		<script type="text/javascript">
			alert("관람 불가능");
			history.go(-1);
		
		</script>
<%
	} else {
		request.setAttribute("name", "세종대왕");
		RequestDispatcher dis = 
				request.getRequestDispatcher("three2.jsp");
		dis.forward(request, response);
	}
%>
</body>
</html>