<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join</title>
	<style type="text/css">
		body {
			font-size: 20px; color: teal;
			padding: 50px 20px;
		}
	</style>
</head>
<body>
	<h1>완료된 회원가입</h1>
	<p><a href="table01.jsp">table01</a>에서 넘어옴</p>
	<hr>
<%
	request.setCharacterEncoding("UTF-8");	//요청 파라미터에 값에 대한 한글처리
	
	// 사용자로부터 넘어온 데이터를 저장
	String id = request.getParameter("id");
	String pw1 = request.getParameter("pass1");
	String pw2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	// 체크박스, 복수선택된 값 가져오기
	String []hobby = request.getParameterValues("hobby");
	String movie = request.getParameter("movie");
	String age = request.getParameter("age");
	String info = request.getParameter("info");

%>
	<%=id %><br>
	<!-- 비번확인해서 출력하기 -->
<%
if(!pw1.equals(pw2)){
%>
	<script type="text/javascript">
		alert("비밀번호가 틀립니다");
		history.go(-1);		//이전 페이지로 이동됨
	</script>
<%	
} else {
%>
	<%=pw1 %><br>
<%
}
%>




	<!-- 취미. 출력하기 -->
<%
	for(int i=0; i<hobby.length; i++){
%>
		<%=hobby[i] +" " %>
<%
	}
%>
<br>

<%=age %><br>
<%=info %><br>

</body>
</html>