<%@page import="bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UpdateProc.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
%>
<jsp:useBean id="boardbean" class="bean.BoardBean">
	<jsp:setProperty property="*" name="boardbean"/>
</jsp:useBean>
<%
	BoardDAO bdao = new BoardDAO();
	String pass = bdao.getPass(boardbean.getNum());
	
	if(pass.equals(boardbean.getPassword())){
		bdao.oneUpdateBoard(boardbean);
		response.sendRedirect("BoardList.jsp");
	} else {
%>
<script type="text/javascript">
	alert("패스워드가 틀렸습니다.");
	history.go(-1);
</script>
<%
	}
%>

</body>
</html>