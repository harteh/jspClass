<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UpdateProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>
<jsp:useBean id="mbean" class="bean.MemberBean">
	<jsp:setProperty property="*" name="mbean"/>
</jsp:useBean>
<%
	MemberDAO mdao = new MemberDAO();
	
	//DB에서 가져온 패스워드를 가져온다
	String pass = mdao.getPass(id);
	
	if( mbean.getPass1().equals(pass)){
		mdao.updateMember(mbean);
		response.sendRedirect("MemberArray.jsp");
		// DB의 비번과 입력한 비번이 같으면 mem 테이블 수정
	} else {
%>
<script type="text/javascript">
	alert("패스워드가 틀렸습니다.");
	history.go(-1);
</script>
<%
	}
%>

	<h2><%=mbean.getId() %> 회원의 정보 수정 하였습니다.</h2>
	<%=pass %> 와 입력한 비번:<%= mbean.getPass1() %>
	
</body>
</html>