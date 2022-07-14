<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MemberJoinProc</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	//복수 선택 값을 배열에 저장
	String []hobby = request.getParameterValues("hobby");
	String str = "";
	
	//배열에 있는 내용을 하나의 문자열로 저장
	for(int i=0; i<hobby.length; i++){
		str += hobby[i]+" ";
	}
%>

<jsp:useBean id="memBean" class="bean.MemberBean">
	<jsp:setProperty property="*" name="memBean"/>
</jsp:useBean>

<%
	memBean.setHobby(str);

	String id = "BM";
	String pw= "bm0301";
	String url="jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	try {
		//1. 해당 데이터 배이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2. 데이터 베이스에 접속
		Connection con = DriverManager.getConnection(url, id, pw);
		String sql = "insert into Mem values(?,?,?,?,?,?,?,?)";
		
		//3. 접속 후 쿼리를 준비한다.
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//4. ?에 맞게 데이터를 맵핑
		pstmt.setString(1, memBean.getId());
		pstmt.setString(2, memBean.getPass1());
		pstmt.setString(3, memBean.getEmail());
		pstmt.setString(4, memBean.getTel());
		pstmt.setString(5, memBean.getHobby());
		pstmt.setString(6, memBean.getJob());
		pstmt.setString(7, memBean.getAge());
		pstmt.setString(8, memBean.getInfo());
		
		//5. 쿼리 실행
		//insert, update, delete 시 사용하는 메소드
		pstmt.executeQuery();
		
		con.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

입력 완료

</body>
</html>