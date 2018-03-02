package com.newlecture.jspweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.newlecture.jspweb.entity.Member;

public class MemberDao {
	
	public List<Member> getList() throws SQLException, ClassNotFoundException{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String sql = "select * from member";
		
		// 드라이버 로드
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);	//	쿼리실행(select) / 업데이트실행(반환되는 값이 없는 쿼리는 이걸로실행(update,delete,insert)
		
		String id;
		String pwd;
		String name;
		String gender;
		int age;
		String birthDay;
		String major;
		String address;
		String phone;
		String ssn;
		String ip;
		String boss;
		Date regDate;
		
		List<Member> list = new ArrayList<>();
		
		while(rs.next()) {
			
			id = rs.getString("id");
			pwd = rs.getString("pwd");
			name = rs.getString("name");
			gender = rs.getString("gender");
			age = rs.getInt("age");
			birthDay = rs.getString("birthDay");
			major = rs.getString("major");
			address = rs.getString("address");
			phone = rs.getString("phone");
			ssn = rs.getString("ssn");
			ip = rs.getString("ip");
			boss = rs.getString("boss");
			regDate = rs.getDate("regDate");
							
			Member member = new Member(id, pwd, name, gender, age, birthDay, major, address, phone, ssn, ip, boss, regDate);
			list.add(member);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return list;
		
	}
}
