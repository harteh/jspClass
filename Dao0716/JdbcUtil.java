package bean;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcUtil {
	
	public Connection getConnection() {
		
		Connection conn = null;
		
		try {
			
			String id = "BM";
			String pw = "bm0301";
			String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("DB 연결 성공");
			
		} catch (Exception e) {
			System.out.println("JdbcUtil: ");
			e.printStackTrace();
		}
		
		return conn;
		
	}

}
