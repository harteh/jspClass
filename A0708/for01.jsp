<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>for01.jsp</title>
	<style> body {background-color: bisque;} </style>
</head>
<body>

<%!
	String name[] = {"세종", "세조", "정조", "태조"};

	public int big(int a, int b){
		return a>b? a:b;
	}
%>
	<h3>테이블</h3>
	<table border="1" width="200">
<%
	for(int i=0; i<name.length; i++){
%>
	<tr><td> <%= i %></td><td> <%=name[i] %> </td></tr>
<%
	}
%>
	</table>
	<hr>
	
	<h3>for 문</h3>
<%
	for(int i=1; i<=10; i++){
		out.print(i +" ");
	}
%>
	<hr>
<%
	for(int i=1; i<=10; i++){
%>		<%=i %>
<%
	}
%>
	<hr>
<%
	int i, sum=0;
	for(i=1; i<=10; i++){
		if(i<10){
%>
		<%= (i+ " + ") %>
<%
		}
		else {
			out.println(i+"=");
		}
		sum+=i;
	}
%>
	<%= sum %>
	<hr>
	
	<h3>함수호출</h3>
<%
	int x=30; int y=40;
%>
	<p>두 수 중 큰 수는? <%=big(x, y) %> </p>
	<hr>
	
	<h3>날짜:삼항연산자</h3>
<%
	java.util.Date date = new java.util.Date(); 
	int hour = date.getHours();
%>
	<p> 지금은 오전입니까 =>  <%=hour < 12 ? "오전":"오후" %> 입니다</p>
	<hr>
	
	<h3>날짜:삼항연산자</h3>
</body>
</html>