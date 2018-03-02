package com.newlecture.jspprj.controller.student.community.answeris;

import java.io.IOException;
import java.util.List;

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

import com.newlecture.jspprj.dao.AnswerisDao;
import com.newlecture.jspprj.dao.jdbc.JdbcAnswerisDao;
import com.newlecture.jspprj.entity.AnswerisView;


@WebServlet("/student/community/answeris/list")
public class ListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int page = 1;
		int lastPage = 1;
		
		String page_ = request.getParameter("p");
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);
		
		AnswerisDao answerisDao = new JdbcAnswerisDao();
		List<AnswerisView> list = answerisDao.getList(page);
		int count = answerisDao.getCount();
		
		if(count>0) {
			lastPage = count/15;
			if(count%15 > 0)
				lastPage++;
		}
		
		int off = (page-1)%5;
		int startNum = page - off;
		
		request.setAttribute("list",list);
		request.setAttribute("count", count);
		request.setAttribute("lastPage", lastPage);
		request.setAttribute("startNum", startNum);
		
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/student/community/answeris/list.jsp");
		dispatcher.forward(request, response);*/
		
		/*TilesContainer container = TilesAccess.getContainer(request.getSession().getServletContext());
		container.render("student.community.answeris.list", request, response);
		container.endContext(request, response);*/
		
		// tiles 2.x 버전에서 사용하던 방법
	      /*TilesContainer container = TilesAccess.getContainer(
	              request.getSession().getServletContext());
	      container.render("student.community.answeris.list", request, response);
	      container.endContext(request, response);*/
	      
	      // tiles 3.x 버전에서 사용하는 방법
	      ApplicationContext applicationContext = ServletUtil
	            .getApplicationContext(request.getSession().getServletContext());
	      TilesContainer container = TilesAccess.getContainer(applicationContext);
	      ServletRequest servletRequest = new ServletRequest(applicationContext, request, response);
	      container.render("student.community.answeris.list", servletRequest);
	}
}
