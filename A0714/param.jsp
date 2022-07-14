<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>param</title>
    <style>
		body {background-color: aliceblue;}
        table {width: 700px;  }
        table tr th{ border-bottom: 1px solid #666; height: 30px;}
        table tr td{ border-bottom: 1px solid #666; height: 30px;}
        .btnSet {
            text-align: right;
            border: none;
        }
    </style>
</head>
<body>

    <h3>회원가입</h3>
    <!-- 1번 문제용 action
	<form action="Param"  method="post" name="addPer">
	-->
	<form action="paramAddDB.jsp"  method="post" name="addPer">
	<table>	
        <tr>
            <th>아이디</th>
            <td><input type="text" name="uid"></td>
        </tr>
        <tr>
            <th>나이</th>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pass1" required></td>
        </tr>
        <tr>
            <th>비밀번호 확인</th>
            <td><input type="password" name="pass2" required></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="tel" name="tel"></td>
        </tr>
        <tr>
            <td colspan="2" class="btnSet">
                <input type="submit" value="회원가입" onclick="chk()">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
    </form>

<script src="http://localhost:8080/A0714db/param.js"></script>
</body>
</html>