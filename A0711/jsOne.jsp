<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="jsTwo.jsp" name="aa" onsubmit="return on()">
		숫자: <input name="num">
		<input type="submit" value="입력완료">
	</form>
	
	<script type="text/javascript">
		function on(){
			if(isNaN(document.aa.num.value)){
				alert("숫자를 입력하세요");
				return false;
			}
			else {
				//return true 일때 jsTwo.jsp으로 이동됨
				return true;
			}
		}
	</script>
</body>
</html>