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

	String uid = request.getParameter("id");
	String pwd = request.getParameter("pw");

	// 세션을 이용해서 데이터를 유지
	session.setAttribute("li", uid);
	
	//세션 유지 시간
	session.setMaxInactiveInterval(60);
%>
<form method="post" action="three.jsp">
	 가장 좋아하는 음식은?
	<input type="radio" name="food" value="피자">피자
	<input type="radio" name="food" value="파스타">파스타
	<input type="radio" name="food" value="탕수육">탕수육
	<input type="submit" value="결과">
</form>
<!-- three.jsp를 만들어 어떤 음식을 선택했는지 알아냄
	세션에 설정한 id의 값을 가져온다.
	if..id 값이 null이 아니면 (피자)를 가장 좋아한다
 -->

</body>
</html>