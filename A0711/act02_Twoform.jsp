<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>act02_Twoform.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String login = request.getParameter("aa");
	
	if(login.equals("user")){
%>
		<jsp:forward page="act02_main.jsp">
			<jsp:param value="고객" name="username"/>
			<jsp:param value='<%=URLEncoder.encode("고객","UTF-8") %>' 
      name="username"/>
			
		</jsp:forward>
<%		
	} else {
%>
		<jsp:forward page="act02_manage.jsp">
			<jsp:param value="관리자" name="username"/>
			<jsp:param value='<%=URLEncoder.encode("관리","UTF-8") %>' 
      name="username"/>
			
		</jsp:forward>
<%		
	}
%>

</body>
</html>