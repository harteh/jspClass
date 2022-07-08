<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>tableQ1의 선택된 값들</h1>
	<p><a href="tableQ1.jsp">tableQ1</a>에서 넘어옴</p>
	<hr>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String []color = request.getParameterValues("color");
	
	out.println(name);
	
	if(gender.equals("여자")){
		out.println("woman");
	}
	else {
		out.println("man");
	}
	
	for(int i=0; i<color.length; i++){
		String chk = color[i];
		switch(chk){
		case "빨강":
			out.println("red");
			break;
		case "파랑":
			out.println("blue");
			break;
		case "녹색":
			out.println("green");
			break;
		case "노랑":
			out.println("GOLD");
			break;
		default:
			break;
		}
	}
	
%>

</body>
</html>