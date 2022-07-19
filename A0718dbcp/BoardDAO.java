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
		int cntAll =0;
		
		getCon();
		try {
			String sql = "select count(*) from board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cntAll = rs.getInt(1);
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cntAll;
	}
	
	
	//게시글 보기 
	public BoardBean oneBoard(int num) {
		
		BoardBean bean = new BoardBean();
		
		getCon();
		try {
			
			//조회수 증가 처리
			String readsql = "update board set readcount = readcount+1 "
					+ "where num = ?";
			pstmt = con.prepareStatement(readsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			

			//게시글 한개 가져오기
			String sql = "select * from board where num= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReq_date(rs.getString(6));
				
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));
				
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
	//답글 등록 처리
	public void reWriteBoard(BoardBean bean) {
		
		int ref = bean.getRef();
		int re_step = bean.getRe_step();
		int re_level = bean.getRe_level();	//원글 제외한 글의 +1
		
		getCon();
		try {
			String levelsql = "update board set re_level = re_level+1 "
					+ "where ref=? and re_level > ?";
			
			pstmt = con.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			
			pstmt.executeUpdate();
			
			//댓글을 DB에 삽입
			String sql = "insert into board values"
					+ "(bo_seq.NEXTVAL, ?,?,?,?, sysdate, ?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step+1);
			pstmt.setInt(7, re_level+1);
			pstmt.setString(8, bean.getContent());
			
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	//비밀번호 확인
	public String getPass(int num) {
		String pass="";
		getCon();
		
		try {
			
	        String sql = "select password from board where num = ?";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, num);

	        rs = pstmt.executeQuery();

	        if(rs.next()) {
	            pass = rs.getString(1);
	        }
	        con.close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	
	//게시글 수정 처리
	public void oneUpdateBoard(BoardBean bean) {
		
		getCon();
		try {
			String sql = "update board "
					+ "set subject=?, content=? "
					+ "where num=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getContent());
			pstmt.setInt(3, bean.getNum());
			
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}