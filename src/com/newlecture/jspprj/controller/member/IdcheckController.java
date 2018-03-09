package com.newlecture.jspprj.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.newlecture.jspprj.dao.MemberDao;
import com.newlecture.jspprj.dao.jdbc.JdbcMemberDao;
import com.newlecture.jspprj.entity.Member;

@WebServlet("/member/idcheck")
public class IdcheckController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("id");
		
		MemberDao memberDao = new JdbcMemberDao();
		Member member = memberDao.get(memberId);
		Gson gson = new Gson();
		String json = gson.toJson(member);
		/*
		try {
			Thread.sleep(5000);
		}
		catch (InterruptedException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		*/
		PrintWriter out = response.getWriter();
		
		out.println(json);
	}
}
