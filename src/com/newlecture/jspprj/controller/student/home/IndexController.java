package com.newlecture.jspprj.controller.student.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.servlet.ServletRequest;
import org.apache.tiles.request.servlet.ServletUtil;

import com.newlecture.jspprj.dao.MemberRoleDao;
import com.newlecture.jspprj.dao.jdbc.JdbcMemberRoleDao;

@WebServlet("/student/index")
public class IndexController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * String id = request.getParameter("id");
		 * 
		 * AnswerisDao answerisDao = new JdbcAnswerisDao(); AnswerisView answeris =
		 * answerisDao.get(id);
		 * 
		 * //주의!, request로 값을 넘겨줄때 객체타입은 오브젝트 타입으로 반환되므로 반드시 형변환하여 사용해야한다.
		 * request.setAttribute("answeris", answeris);
		 * 
		 * //다음 서블릿으로 포워드 하는 방식 RequestDispatcher dispatcher =
		 * request.getRequestDispatcher(
		 * "/WEB-INF/views/student/community/answeris/detail.jsp");
		 * dispatcher.forward(request, response);
		 */
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("html/text; UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(request.getSession().getAttribute("id") == null)
			response.sendRedirect("../member/login?returnurl=../student/index");
		
		String memberId = String.valueOf(session.getAttribute("id"));
		
		PrintWriter out = response.getWriter();
		MemberRoleDao memberRoleDao = new JdbcMemberRoleDao();
		if(!memberRoleDao.hasMemberRole(memberId,"ROLE_STUDENT"))
			out.print("<script>alert('허락되지 않은 접근입니다.');history.back();</script>");
		
		ApplicationContext applicationContext = ServletUtil
				.getApplicationContext(request.getSession().getServletContext());
		TilesContainer container = TilesAccess.getContainer(applicationContext);
		ServletRequest servletRequest = new ServletRequest(applicationContext, request, response);
		container.render("student.home.index", servletRequest);
	}
}
