<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DeleteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mbean" class="bean.MemberBean">
	<jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%
	MemberDAO mdao = new MemberDAO();
	String pass = mdao.getPass(mbean.getId());	//기존(DB속) 비번
	
	if(mbean.getPass1().equals(pass)){	//입력한 비번과 기존 비번이 동일하면
		mdao.deleteMember(mbean.getId());
		response.sendRedirect("MemberArray.jsp");	//성공시 전체목록으로 이동
	} else {
%>
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다. 탈퇴 실패");
		history.go(-1);
	</script>
<%
	}
%>

</body>
</html>