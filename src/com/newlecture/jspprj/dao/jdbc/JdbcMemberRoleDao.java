package com.newlecture.jspprj.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.newlecture.jspprj.dao.MemberRoleDao;
import com.newlecture.jspprj.entity.Member;

public class JdbcMemberRoleDao implements MemberRoleDao {

	@Override
	public boolean hasMemberRole(String id, String roleId) {
		String sql = "SELECT ROLE_ID FROM MEMBER_ROLE WHERE MEMBER_ID=?";
	    
		boolean isEqual = false;
	    
	    // 드라이버 로드
	    try {
	       Class.forName("oracle.jdbc.driver.OracleDriver");
	       
	       String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
	       Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
	       PreparedStatement st = con.prepareStatement(sql);
	       st.setString(1, id);
	       
	       ResultSet rs = st.executeQuery();
	       
	       String roleId_ = null;
	       if(rs.next()) {
	    	   roleId_ = rs.getString("ROLE_ID");
	       }
	       if(roleId.equals(roleId_))
	    	   isEqual = true;
	       
	       rs.close();
	       st.close();
	       con.close();
	       
	    } catch (ClassNotFoundException e) {
	       // TODO Auto-generated catch block
	       e.printStackTrace();
	    } catch (SQLException e) {
	       // TODO Auto-generated catch block
	       e.printStackTrace();
	    }
		
		return isEqual;
	}

}