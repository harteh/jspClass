<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join-A0711B</title>
	<style> body {background-color: aliceblue;} </style>
</head>
<body>
	<h1>주문 계산 결과</h1>
	<hr>
<%
	request.setCharacterEncoding("UTF-8");
	int total = 0;
	int price = 0;
	
	String menu = request.getParameter("menu");
	String number = request.getParameter("number");
	String text = request.getParameter("text");
	
	switch(menu){
	case "ame":
		menu = "아메리카노";
		price = 4000;
		break;
	case "latte":
		menu = "라떼";
		price = 4500;
		break;
	case "chino":
		menu = "카푸치노";
		price = 4500;
		break;
	case "fra":
		menu = "프라푸치노";
		price = 7500;
		break;
	}
	
	total = price* Integer.parseInt(number);
%>

	<p>주문 메뉴: <%=menu %></p>
	<p>개당 가격: <%=price %>원</p>
	<p>주문 수량: <%=number %>개</p>
	<p>총 금액: <%=total %>원</p>


</body>
</html>