<%@page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review02</title>
</head>
<body bgcolor="beige">

<h2>1부터 입력받은 숫자까지 출력하기</h2>
<%--
	int num = Integer.parseInt(request.getParameter("num"));

	for(int i=1; i<=num; i++){
		out.print(i + " ");
	}
--%>
<hr>

<h2>사이트 이동시키기</h2>
<%--
	String site = request.getParameter("aa");
	response.sendRedirect(site);
--%>
<hr>

<h2>회원가입 검증</h2>
<%--!
	String a;
--%>
<%--
	a = request.getParameter("name");
	if(a.equals("kbm")){
--%>
<p>이름은 a 입니다</p>
<%--
	} else {
--%>
<script type="text/javascript">
	//alert("이름 입력 오류");
</script>
<p>a 은 잘못된 이름입니다.</p>
<%--
	}
--%>
<hr>

<h2>좋아하는 색 출력</h2>
<%--!
	String name;	String color;
--%>
<%--
	name = request.getParameter("name");
	color = request.getParameter("color");
--%>
<p>name 님은 color 색을 좋아하네요</p>
<hr>

<h2>Forward 페이지 이동</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String name1 = request.getParameter("name1");
	out.print(name1);
	
	String name2 = request.getParameter("name2");
%>
<%=URLDecoder.decode(name2, "UTF-8") %>
<hr>

</body>
</html>