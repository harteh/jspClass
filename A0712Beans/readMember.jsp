<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="myMember" class="co.bm.javabeans.MemberBean" />
	<jsp:setProperty property="myMember" name="*"/>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>readMember</title>
</head>
<body>
<!-- jsp:useBean 입력받은 정보를 자바 빈으로 처리한다 -->
<!-- jsp:setProperty
 폼 양식에서 전달되는 매개 변수 값을 얻어와서 member 객체의 프로퍼티 값으로 저장 -->
<!-- 자바빈 객체에 저장하기 위해서 반드시 파라미터의 이름과 자바 빈 프로퍼티 이름이 동일해야한다 -->

</body>
</html>