<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>isNaN1</title>
</head>
<body>
<p>
	1.	다음과 같은 웹 페이지를 작성해라. <br>
	자바스크립트 언어로 숫자 부분에 아무것도 입력 안하고<br> 
	입력완료버튼을 누르면 “데이터 입력” 이라는 경고창을 출력하고<br> 
	문자를 입력하면 “문자열은 안된다”라고 경고창에 출력해라. <br>
	숫자를 입력하면 1부터 그 숫자까지 출력된다. (isNaN함수 사용 , request 객체 사용)
</p>
<form action="isNaN2.jsp" name="isNan" onsubmit="return on()">
	숫자: <input name="number">
	<input type="submit" value="입력완료">
</form>
<script type="text/javascript">
	function on() {
		if(isNan.number.value == " "){	// 공백이면
			alert("데이터 입력");
			 return false;
		}
		else if (isNaN(isNan.number.value)){ //숫자가 아니여야 참
			alert("문자열은 안된다");
			 return false;
		}
		else {
			return true;
		}
	}
</script>
</body>
</html>