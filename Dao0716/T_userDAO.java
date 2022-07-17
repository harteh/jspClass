package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class T_userDAO {
	
	static JdbcUtil jUtil = new JdbcUtil();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	//회원 전체 목록 가져오기
	public ArrayList<T_userBean> getUserList(){
		
		ArrayList<T_userBean> getList = new ArrayList<>();	//반환용 리스트
		
		try {
			sql = "select * from t_user order by user_no";
			
			conn = jUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				T_userBean tuB = new T_userBean();
				
				tuB.setUser_no(rs.getInt(1));
				tuB.setUser_id(rs.getString(2));
				tuB.setUser_pass(rs.getString(3));
				
				tuB.setUser_bir(rs.getDate(4));
				
				tuB.setUser_nick(rs.getString(5));
				tuB.setUser_creday(rs.getDate(6));
				tuB.setWal_no(rs.getString(7));
				
				getList.add(tuB);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			System.out.println("getUserList() : ");
			e.printStackTrace();
		}
		
		return getList;
	}
	

}
