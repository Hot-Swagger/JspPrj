package com.newlecture.jspprj.controller.student.community.answeris;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlecture.jspprj.dao.AnswerisDao;
import com.newlecture.jspprj.dao.jdbc.JdbcAnswerisDao;
import com.newlecture.jspprj.entity.Answeris;

@WebServlet("/student/community/answeris/reg")
public class RegController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/student/community/answeris/reg.jsp");
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Answeris answeris = new Answeris();
		answeris.setTitle(request.getParameter("title"));
		answeris.setLanguage("language");
		answeris.setPlatform("platform");
		answeris.setRuntime("runtime");
		answeris.setErrorCode("errorCode");
		answeris.setErrorMessage("errorMessage");
		answeris.setSituation("situation");
		answeris.setTriedToFix("triedToFix");
		answeris.setReason("reason");
		answeris.setHowToFix("howToFix");
		answeris.setWriterId("na");
		
		
		AnswerisDao answerisDao = new JdbcAnswerisDao();
		answerisDao.insert(answeris);
		
	 	response.sendRedirect("list");
	}
}
