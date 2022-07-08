<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>table01</title>
	<style type="text/css">
		body {background-color: aliceblue;}
        table {width: 500px;  }
        table tr th{ border: 1px solid #666; height: 30px;}
        table tr td{ border: 1px solid #666; height: 30px;}
    </style>
</head>
<body>
	<h1>회원가입 테이블</h1>
	<form action = "join.jsp" method="post">
	<!-- submit 버튼 클릭 시 이동되는 페이지 : join.jsp -->
	<table>	
        <tr>
            <th>아이디</th>
            <td><input type="text" name="id" placeholder="ID 입력"></td>
        </tr>
        <tr>
            <th>패스워드</th>
            <td><input type="password" name="pass1" placeholder="PW 입력"></td>
        </tr>
        <tr>
            <th>패스워드 확인</th>
            <td><input type="password" name="pass2"></td>
        </tr>
        <tr>
            <th>이메일</th>
            <td><input type="email" name="email"></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="tel" name="tel"></td>
        </tr>
        <tr>
            <th>취미</th>
            <td>
                <input type="checkbox" name="hobby" value="독서">독서
                <input type="checkbox" name="hobby" value="음악">음악
                <input type="checkbox" name="hobby" value="캠핑">캠핑
                <input type="checkbox" name="hobby" value="여행">여행
            </td>
        </tr>
        <tr>
            <th>좋아하는 영화</th>
            <td>
	            <select name="movie">
	                <option value="토르">토르</option>
	                <option value="겟아웃">겟아웃</option>
	                <option value="베트맨">베트맨</option>
	                <option value="대부">대부</option>
	            </select>
            </td>
        </tr>
        <tr>
            <th>연령대</th>
            <td>
                <input type="radio" name="age" value="20">20대
                <input type="radio" name="age" value="30">30대
                <input type="radio" name="age" value="40">40대
                <input type="radio" name="age" value="50">50대
            </td>
        </tr>
        <tr>
            <th>남기고싶은말</th>
            <td><textarea name="info" cols="30" rows="5"></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="회원가입">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
    </form>

</body>
</html>