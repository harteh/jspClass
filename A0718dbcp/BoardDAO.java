package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
//	커넥션 풀 사용
	public void getCon() {
		try {
			Context ctx = new InitialContext();
			//처음들어오는 context로 부터 객체를 만들고
			Context env = (Context)ctx.lookup("java:comp/env");
			DataSource ds = (DataSource)env.lookup("jdbc/pool");
			
			con = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//게시글 등록
	public void insertBoard(BoardBean bean) {
		getCon();
		
		int ref = 0;		// 글 그룹
		int re_step = 1;	// 새글
		int re_level = 1;	// 계층
		
		try {
			//가장 큰 ref값을 읽어온다
			String rsql = "select max(ref) from board";
			
			pstmt = con.prepareStatement(rsql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ref = rs.getInt(1)+1;	//새글이 등록 될때마다 ref를 1씩 증가
			}
			
			String sql = "insert into board values"
					+ "(bo_seq.NEXTVAL, ?,?,?,?, sysdate, ?,?,?,0,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bean.getContent());
			
			pstmt.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	//전체 게시글 목록 출력
	public Vector<BoardBean> allBoard(int start, int end){
		
		Vector<BoardBean> getlist = new Vector<>();
		
		getCon();
		try {
			String sql = "select * from "
					+ "(select A.*, Rownum Rnum from "
					+ "(select * from board order by ref desc, re_step asc) A) "
					+ "where Rnum>=? and Rnum<=?";
			pstmt= con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardBean bean = new BoardBean();
				
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				
//				bean.setReq_date(rs.getString(6));
				bean.setReq_date(rs.getDate(6).toString());	//날짜 객체를 문자열로 변환
				
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				
				bean.setContent(rs.getString(11));
				
				getlist.add(bean);
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return getlist;
	}

	
	//전체 게시글 개수 
	public int getAllCount() {
		
		return 105;
	}
	

}
