<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ItemForm</title>
</head>
<body>

<h3>상품 등록 폼</h3>
<form action="item.jsp" method="post">
<table width="500">
	<tr height="50">
		<td width="100" align="center"> 상품이름</td>
		<td width="350" align="left">
			<input type="text" name="name" size="40">
		</td>
	</tr>
	
	<tr height="50">
		<td width="100" align="center"> 가격</td>
		<td width="350" align="left">
			<input type="number" name="price" size="40">
		</td>
	</tr>
	
	<tr height="50">
		<td width="100" align="center">상품설명</td>
		<td width="350" align="left">
			<input type="text" name="desc1" size="40">
		</td>
	</tr>
	
	<tr height="50">
		<td align="center" colspan="2">
			<input type="submit" value="상품등록">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>

</body>
</html>