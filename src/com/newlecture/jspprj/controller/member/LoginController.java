package com.newlecture.jspprj.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.servlet.ServletRequest;
import org.apache.tiles.request.servlet.ServletUtil;

import com.newlecture.jspprj.dao.MemberDao;
import com.newlecture.jspprj.dao.jdbc.JdbcMemberDao;
import com.newlecture.jspprj.entity.Member;

@WebServlet("/member/login")

public class LoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		ApplicationContext applicationContext = ServletUtil
				.getApplicationContext(request.getSession().getServletContext());
		TilesContainer container = TilesAccess.getContainer(applicationContext);
		ServletRequest servletRequest = new ServletRequest(applicationContext, request, response);
		container.render("member.login", servletRequest);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		
		String id_ = request.getParameter("id");
		String pwd_ = request.getParameter("pwd");
		
		MemberDao memberDao = new JdbcMemberDao();
		Member member = memberDao.get(id_);
		
		if(member == null)
			//response.sendRedirect("login?error=1");
			out.println("<script>alert('아이디 또는 비밀번호가 올바르지 않습니다.'); location.href = 'login'</script>");
		else if(!member.getPwd().equals(pwd_))
			out.println("<script>alert('아이디 또는 비밀번호가 올바르지 않습니다.'); location.href = 'login'</script>");
		else {
			request.getSession().setAttribute("id", id_);
			response.sendRedirect("../index");
		}
			
	}
}
