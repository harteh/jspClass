<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>tableQ1</title>
	<style type="text/css">
		body {background-color: aliceblue;}
        table {width: 500px;  }
        table tr th{ border: 1px solid #666; height: 30px;}
        table tr td{ border: 1px solid #666; height: 30px;}
    </style>
</head>
<body>
	<h2>0708 jsp문제 1</h2>
	<form action = "tableA1.jsp" method="post">
	<table>	
        <tr>
            <th>이름</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>성별</th>
            <td>
                <input type="radio" name="gender" value="여자">여자
                <input type="radio" name="gender" value="남자">남자
			</td>
        </tr>
        <tr>
            <th>좋아하는 색</th>
            <td>
                <input type="checkbox" name="color" value="빨강">빨강
                <input type="checkbox" name="color" value="파랑">파랑
                <input type="checkbox" name="color" value="녹색">녹색
                <input type="checkbox" name="color" value="노랑">노랑
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="전송">
                <input type="reset" value="취소">
            </td>
        </tr>
	</table>
	</form>
</body>
</html>