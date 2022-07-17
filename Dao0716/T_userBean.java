package bean;

import java.sql.Date;

public class T_userBean {
	
	private int user_no;
	private String user_id;
	private String user_pass;
	private Date user_bir;		//날짜형식
	private String user_nick;
	private Date user_creday;		//날짜형식
	private String wal_no;
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public Date getUser_bir() {
		return user_bir;
	}
	public void setUser_bir(Date user_bir) {
		this.user_bir = user_bir;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public Date getUser_creday() {
		return user_creday;
	}
	public void setUser_creday(Date user_creday) {
		this.user_creday = user_creday;
	}
	public String getWal_no() {
		return wal_no;
	}
	public void setWal_no(String wal_no) {
		this.wal_no = wal_no;
	}
	
}
