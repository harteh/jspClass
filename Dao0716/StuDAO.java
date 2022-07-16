package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class StuDAO {
	
	String id = "BM";
	String pw = "bm0301";
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//학생 전체목록 조회
	public Vector<StudentBean> getStulist() {
		Vector<StudentBean> getList = new Vector<>();
		
		try {
			getConn();
			String sql = "select * from a_student order by stu_grade";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				StudentBean sb = new StudentBean();
				sb.setStu_no(rs.getString(1));
				sb.setStu_name(rs.getString(2));
				sb.setStu_dept(rs.getString(3));
				sb.setStu_grade(rs.getString(4));
				sb.setStu_class(rs.getString(5));
				
				String gen = rs.getString(6);
				String gender = (gen.equals("M")?"남자":"여자");
				sb.setStu_gender(gender);
				
				String height 
				= (rs.getString(7) != null?rs.getString(7):"미입력");
				sb.setStu_height(height);
				
				String weight 
				= (rs.getString(8) != null?rs.getString(8):"미입력");
				sb.setStu_weight(weight);
				
				getList.add(sb);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return getList;
	}

	
	//신규 학생 등록
	public void addStu(StudentBean sb) {
		try {
			getConn();
			String sql ="insert into a_student values(?,?,?,?,?,?,?,?) ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, sb.getStu_no());
			pstmt.setString(2, sb.getStu_name());
			pstmt.setString(3, sb.getStu_dept());
			pstmt.setString(4, sb.getStu_grade());
			pstmt.setString(5, sb.getStu_class());
			pstmt.setString(6, sb.getStu_gender());
			pstmt.setString(7, sb.getStu_height());
			pstmt.setString(8, sb.getStu_weight());
			
			pstmt.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	//학생 개인 정보 조회 - 학번으로 조회
	public StudentBean stuInfo(int stu_no) {
		
		StudentBean sb = new StudentBean();
		
		try {
			getConn();
			String sql = "select * from a_student where stu_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, stu_no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				sb.setStu_no(rs.getString(1));
				sb.setStu_name(rs.getString(2));
				sb.setStu_dept(rs.getString(3));
				sb.setStu_grade(rs.getString(4));
				sb.setStu_class(rs.getString(5));
				sb.setStu_gender(rs.getString(6));
				sb.setStu_height(rs.getString(7));
				sb.setStu_weight(rs.getString(8));
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sb;
	}

	
	//학생 정보 변경
	public void updateStu(StudentBean sb) {
		
		try {
			getConn();
			String sql="update a_student set "
	                + "stu_name = ?, stu_dept=?, stu_grade=?, stu_class=?, "
	                + "stu_gender=?, stu_height=?, stu_weight=? "
	                + "where stu_no=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, sb.getStu_name());
			pstmt.setString(2, sb.getStu_dept());
			pstmt.setString(3, sb.getStu_grade());
			pstmt.setString(4, sb.getStu_class());
			pstmt.setString(5, sb.getStu_gender());
			pstmt.setString(6, sb.getStu_height());
			pstmt.setString(7, sb.getStu_weight());
			pstmt.setString(8, sb.getStu_no());
			
			pstmt.executeQuery();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
