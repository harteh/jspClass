<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_method2</title>
</head>
<body>

<%
	int a = Integer.parseInt(request.getParameter("java").trim());
	int b = Integer.parseInt(request.getParameter("jsp").trim());
	int c = Integer.parseInt(request.getParameter("jquery").trim());
	int d = Integer.parseInt(request.getParameter("spring").trim());
%>

<%!
	double avg(int a, int b, int c, int d){
		return (a+b+c+d)/4.0;
	}


	String pass(double a){
		String b;
		
		if(a >= 60){
			b = "프로젝트 투입";
		}
		else {
			b= "재교육 실시";
		}
		return b;
	}
%>


<p>4과목 평균 점수 : <%=avg(a, b, c, d) %>점</p>
<p>통과여부 : <%=pass( avg(a, b, c, d) ) %></p>
</body>
</html>