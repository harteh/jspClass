package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class EmplDAO {
	
	//DB 접속
	String id = "BM";
	String pw = "bm0301";
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//사원 등록
	public void addEmpl(EmployeeBean eBean) {
		
		try {
			getConn();
			String sql = "insert into employee values (?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, eBean.getName());
			pstmt.setString(2, eBean.getAddr1());
			pstmt.setString(3, eBean.getSsn());
			
			pstmt.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	//전체 사원 목록 출력
	public Vector<EmployeeBean> allEmpl(){
		
		Vector<EmployeeBean> getList = new Vector<>();
		
		try {
			getConn();
			
			String sql = "select * from employee";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();		//쿼리 실형 결과를 리턴받아 저장
			
			while(rs.next()) {
				EmployeeBean eBean = new EmployeeBean();
				
				eBean.setName(rs.getString(1));
				eBean.setAddr1(rs.getString(2));
				eBean.setSsn(rs.getString(3));
				
				getList.add(eBean);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return getList;
	}

	
	// 사원 개별 정보 출력
	public EmployeeBean infoEmpl(String name) {
		
		EmployeeBean ebean = new EmployeeBean();
		
		getConn();
		try {
			String sql = "select * from employee where name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			
			rs = pstmt.executeQuery();
			
			//쿼리 실행 결과를 EmployeeBean에 저장한다
			if(rs.next()) {
				ebean.setName(rs.getString(1));
				ebean.setAddr1(rs.getString(2));
				ebean.setSsn(rs.getString(3));
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ebean;
	}
	
	//사원 정보 수정
	public void updateEmpl(EmployeeBean eb) {
		
		getConn();
		try {
			String sql ="update employee set "
					+ "name=?, addr1=?, ssn=? "
					+ "where name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eb.getName());
			pstmt.setString(2, eb.getAddr1());
			pstmt.setString(3, eb.getSsn());
			pstmt.setString(4, eb.getName());
			
			pstmt.executeUpdate();
			conn.close();
			
			System.out.println(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}
