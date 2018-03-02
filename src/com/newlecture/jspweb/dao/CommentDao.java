package com.newlecture.jspweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.newlecture.jspweb.entity.*;

public class CommentDao {
	
	public List<Comment> getList() throws SQLException, ClassNotFoundException{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String sql = "select * from comment";
		
		// 드라이버 로드
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);	//	쿼리실행(select) / 업데이트실행(반환되는 값이 없는 쿼리는 이걸로실행(update,delete,insert)

		String id;
		String content;
		Date regdate;
		String noticeId;
		
		List<Comment> list = new ArrayList<>();
		
		while(rs.next()) {
			
			id = rs.getString("id");
			content = rs.getString("content");
			regdate = rs.getDate("regdate");
			noticeId = rs.getString("noticeId");
							
			Comment comment = new Comment(id, content, regdate, noticeId);
			list.add(comment);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return list;
		
	}
}
