<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>paramAddDB</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="pbean" class="bean.ParamAdd">
	<jsp:setProperty property="*" name="pbean"/>
</jsp:useBean>

<%
	String id = "BM";
	String pw= "bm0301";
	String url="jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection(url, id, pw);
		String sql = "insert into param1 values(?,?,?,?)";
		
		PreparedStatement pstm = con.prepareStatement(sql);
		
		pstm.setString(1, pbean.getUid());
		pstm.setInt(2, pbean.getAge());
		pstm.setString(3, pbean.getPass1());
		pstm.setString(4, pbean.getTel());
		
		pstm.executeQuery();
		con.close();
		
		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

<h2>등록 완료</h2>

<!-- DB 테이블
	create table param1(
	  u_id VARCHAR2(50),
	  u_age NUMBER(20),
	  u_pass1 VARCHAR2(50),
	  u_tel VARCHAR2(50)
	);
 -->
</body>
</html>