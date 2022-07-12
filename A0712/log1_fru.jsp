<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>log1_fru</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//임의의 값으로 로그인 성공여부 비교
	if(id.equals("pink") && pw.equals("1212")){
		response.sendRedirect("log1_suc.jsp?id="+id);
	}else {
%>
	<script type="text/javascript">
		alert("로그인 실패");
		history.go(-1);
	</script>
<%		
	}
%>
<h1>로그인 실패</h1>
</body>
</html>