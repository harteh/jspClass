package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {
	
	String id = "BM";
	String pw= "bm0301";
	String url="jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	Connection con;				//DB에 접근할 수 있도록 하는 객체
	PreparedStatement pstmt;	//쿼리 실행 객체
	ResultSet rs;		//DB 테이블 결과를 리턴받아 자바에 저장해주는 객체
	
	public void getCon() {
		try {
			//1. 해당 데이터 베이스를 사용한다고 선언(로딩)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2.해당 데이터 베이스에 접속
			con =  DriverManager.getConnection(url, id, pw);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//회원 가입
	public void insertMember(MemberBean memBean) {
		try {
			getCon();
			
			String sql = "insert into Mem values(?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			//4. 바인드변수에 맞게 데이터를 맵핑
			pstmt.setString(1, memBean.getId());
			pstmt.setString(2, memBean.getPass1());
			pstmt.setString(3, memBean.getEmail());
			pstmt.setString(4, memBean.getTel());
			pstmt.setString(5, memBean.getHobby());
			pstmt.setString(6, memBean.getJob());
			pstmt.setString(7, memBean.getAge());
			pstmt.setString(8, memBean.getInfo());
			
			pstmt.executeUpdate();
			con.close();	//자원반납
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	//전체 회원 목록 출력
	public Vector<MemberBean> allSelectMember() {
		
		Vector<MemberBean> getlist = new Vector<>();
		
		try {
			getCon();
			String sql = "select * from mem";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//쿼리 실행 시킨 결과를 리턴해서 자바 객체에저장

			while(rs.next()) {	//저장된 데이터만큼까지 반복문을 돌림
				//컬럼으로 나눠진 데이터를 빈클래스에 저장해야함
				
				MemberBean bean = new MemberBean();
				
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				getlist.add(bean);
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return getlist;
		
	}
	
	
	

}
