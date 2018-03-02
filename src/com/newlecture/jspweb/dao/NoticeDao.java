package com.newlecture.jspweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.newlecture.jspweb.entity.Notice;

public class NoticeDao {
	
	public List<Notice> getList() throws SQLException, ClassNotFoundException{
		
		return getList(1, "title", "");
	}
	
	public List<Notice> getList(String query) throws SQLException, ClassNotFoundException{
		
		return getList(1, "title", query);
	}
	
	public List<Notice> getList(int page) throws SQLException, ClassNotFoundException{
		
		return getList(page, "title", "");
	}
	
	public List<Notice> getList(int page, String field, String query) throws SQLException, ClassNotFoundException{	//	목록 불러올때는 getList()
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String sql = "select * from notice";
		
		// 드라이버 로드
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);	//	쿼리실행(select) / 업데이트실행(반환되는 값이 없는 쿼리는 이걸로실행(update,delete,insert)
		
		String id;
		String title;
		String writerId;
		String content;
		Date regDate;
		int hit;
		
		List<Notice> list = new ArrayList<>();
		
		while(rs.next()) {
			
			id = rs.getString("id");
			title = rs.getString("title");
			writerId = rs.getString("writer_id");
			content = rs.getString("content");
			regDate = rs.getDate("reg_date");
			hit = rs.getInt("hit");
			
			Notice notice = new Notice(id, title, writerId, content, regDate, hit);
			list.add(notice);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return list;
		
	}
}
