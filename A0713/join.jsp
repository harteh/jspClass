<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join</title>
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
    <script>
        function chk(){
            //주민번호 체크
            var pNum1 = addMem.persNum1.value;
            var pNum2 = addMem.persNum2.value;
            if(isNaN(pNum1) || isNaN(pNum2) ){
                alert("주민번호는 숫자만 입력 가능합니다.");
                return false;
            }

            //비밀번호 체크
            var pw1 = addMem.pass1.value;
            var pw2 = addMem.pass2.value;

            if(pw1 != pw2){
                alert("비밀번호가 틀렸습니다. ");
                return false;
            }

            //메일주소 자동입력
            var email = addMem.email2.value;        //선택값이 들어갈 자리
            var chkEmail = addMem.email3.value;     //선택한 값

            email = chkEmail;
        }
    </script>
</head>
<body>

    <h3>회원가입</h3>
	<form action="JoinServlet"  method="post" name="addMem" onsubmit="return chk()">
	<table>	
        <tr>
            <th>이름</th>
            <td><input type="text" name="uName"></td>
        </tr>
        <tr>
            <th>주민번호</th>
            <td><input type="text" name="persNum1"> - <input type="text" name="persNum2"></td>
        </tr>
        <tr>
            <th>아이디</th>
            <td><input type="text" name="uid"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pass1"></td>
        </tr>
        <tr>
            <th>비밀번호 확인</th>
            <td><input type="password" name="pass2"></td>
        </tr>
        <tr>
            <th>이메일</th>
            <td>
                <input type="text" name="email1"> @ 
                <input type="text" name="email2" value="">
                <select name="email3">
                    <option value="naver.com" selected>naver.com</option>
                    <option value="nate.com">nate.com</option>
                    <option value="google.com">gmail.com</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>우편번호</th>
            <td><input type="text" name="postNum"></td>
        </tr>
        <tr>
            <th>주소</th>
            <td><input type="text" name="addr1"> <input type="text" name="addr2"></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="tel" name="tel"></td>
        </tr>
        <tr>
            <th>직업</th>
            <td>
                <select name="job" multiple>
                    <option value="1">학생</option>
                    <option value="2">컴퓨터/인터넷</option>
                    <option value="3">언론</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>메일/SMS 정보 수신</th>
            <td>
                <input type="radio" name="chkSms" value="y">수신
                <input type="radio" name="chkSms" value="n">수신 거부
            </td>
        </tr>
        <tr>
            <td colspan="2" class="btnSet">
                <input type="submit" value="회원가입">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
    </form>

</body>
</html>