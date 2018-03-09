package com.newlecture.jspprj.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.newlecture.jspprj.dao.MemberDao;
import com.newlecture.jspprj.entity.Member;

public class JdbcMemberDao implements MemberDao {

   @Override
   public Member get(String id) {
      String sql = "SELECT * FROM Member WHERE ID=?";
      
      Member member = null;
      
      // 드라이버 로드
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         
         String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
         Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
         PreparedStatement st = con.prepareStatement(sql);
         st.setString(1, id);
         
         ResultSet rs = st.executeQuery();
         
         
         if(rs.next()) {
            member = new Member(
                     rs.getString("ID"),
                     rs.getString("name"),
                     rs.getString("pwd")
                  );            
            //System.out.printf("id : %s, name : %s\n", id, name);      
         }
         
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
      
      return member;
   }

}