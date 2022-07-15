<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="itemBean" class="bean.ItemBean">
	<jsp:setProperty property="*" name="itemBean"/>
</jsp:useBean>

<%
	String id = "BM";
	String pw= "bm0301";
	String url="jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	try {
		
		//1. 해당 데이터베이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2. DB 접속
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		//3. 쿼리문
		String sql = "insert into Item values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		//4. 데이터 맵핑
		pstmt.setString(1, itemBean.getName());
		pstmt.setInt(2, itemBean.getPrice());
		pstmt.setString(3, itemBean.getDesc1());
		
		//5. 쿼리 실행
		pstmt.executeQuery();
		conn.close();
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<h2>등록이 완료 되었습니다.</h2>
</body>
</html>