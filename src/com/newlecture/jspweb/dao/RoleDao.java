package com.newlecture.jspweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.newlecture.jspweb.entity.Role;

public class RoleDao {
	
	public List<Role> getList() throws SQLException, ClassNotFoundException{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String sql = "select * from role";
		
		// 드라이버 로드
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);	//	쿼리실행(select) / 업데이트실행(반환되는 값이 없는 쿼리는 이걸로실행(update,delete,insert)
		
		String id;
		String introduction;
		
		List<Role> list = new ArrayList<>();
		
		while(rs.next()) {
			
			id = rs.getString("id");
			introduction = rs.getString("introduction");
							
			Role role = new Role(id, introduction);
			list.add(role);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return list;
		
	}
}
