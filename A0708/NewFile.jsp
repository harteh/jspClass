<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ page errorPage="error.jsp" %>


    
<%!
	String str = "hi";
	int a = 5, b=5;
	
	public int ab(int n){
		return n;
	}
	
	int num = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewFile.jsp</title>
<style> body {background-color: bisque;} </style>
</head>
<body>


<%
	int n1 = 10;
	int n2 = 20;
	int add = n1+n2;
	out.print(n1+" "+n2+"= "+add +" <br> ");
	out.print("이렇게 써야하다니.." +" <hr> ");
%>
<%
	out.print(str +"<br>");
	out.print(ab(4)+"<hr>");
%>
<%
	int num1 = 0;
	out.print(num +"<br>");
	out.print(++num +"<br>");
	
	out.print(++num1 +"<hr>");
%>
<%=	num%>
<%=	"히히 "%>
<%=	ab(777) +"<hr>"%>

<!-- 출력 -->
<%-- 변수 --%>
<%
	String name = "gildong";
%>
<%=name +"<hr>"%>

<!-- 에러 띄우기 -->
<%-- = 4/0 --%>

<a href="sub.jsp">서브페이지</a>
<%@ include file="footer.jsp" %>
</body>
</html>