<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req01</title>
</head>
<body>
	<!-- 브라우저와 웹 서버의 정보를 알아내고 싶다 -->
	<h3>request</h3>
	컨텍스트 패스 :  <%= request.getContextPath() %> <br>
	요청방식 : <%= request.getMethod() %> <br>
	프로토콜 : <%=request.getProtocol() %><br>
	URL : <%=request.getRequestURL() %><br>

</body>
</html>