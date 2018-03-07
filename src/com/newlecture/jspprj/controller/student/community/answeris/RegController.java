package com.newlecture.jspprj.controller.student.community.answeris;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.servlet.ServletRequest;
import org.apache.tiles.request.servlet.ServletUtil;

import com.newlecture.jspprj.dao.AnswerisDao;
import com.newlecture.jspprj.dao.jdbc.JdbcAnswerisDao;
import com.newlecture.jspprj.entity.Answeris;

@WebServlet("/student/community/answeris/reg")
@MultipartConfig(
			fileSizeThreshold = 1024*1024,
			maxFileSize = 1024*1024*100,	//	100메가
			maxRequestSize = 1024*1024*100*5	//	100메가
		)

public class RegController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getContextPath();

		/*
		 * RequestDispatcher dispatcher = request.getRequestDispatcher(
		 * "/WEB-INF/views/student/community/answeris/reg.jsp");
		 * dispatcher.forward(request, response);
		 */

		ApplicationContext applicationContext = ServletUtil
				.getApplicationContext(request.getSession().getServletContext());
		TilesContainer container = TilesAccess.getContainer(applicationContext);
		ServletRequest servletRequest = new ServletRequest(applicationContext, request, response);
		container.render("student.community.answeris.reg", servletRequest);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String pathUrl = "/student/upload";

		String pathSystem = request.getServletContext().getRealPath(pathUrl);

		File file = new File(pathSystem);

		if (!file.exists())
			file.mkdirs();

		/*MultipartRequest req = new MultipartRequest(request, pathSystem, 1024 * 1024 * 100, "UTF-8",
				new DefaultFileRenamePolicy());*/
		
		Part part = request.getPart("attached");
		InputStream is = part.getInputStream();
		String fileName = part.getSubmittedFileName();
				
		byte[] buf = new byte[1024];
		FileOutputStream fos = new FileOutputStream(pathSystem + File.separator + fileName);
						
		int size = 0;
		
		while((size = is.read(buf, 0, 1024)) != -1)
			fos.write(buf, 0, size);
		
		is.close();
		fos.close();

		
		Answeris answeris = new Answeris();
		answeris.setTitle(request.getParameter("title"));
		//answeris.setTitle(req.getParameter("title"));
		answeris.setLanguage("language");
		answeris.setPlatform("platform");
		answeris.setRuntime("runtime");
		answeris.setErrorCode("errorCode");
		answeris.setErrorMessage("errorMessage");
		answeris.setSituation(request.getParameter("situation"));
		//answeris.setSituation(req.getParameter("situation"));
		answeris.setTriedToFix("triedToFix");
		answeris.setReason("reason");
		answeris.setHowToFix("howToFix");
		answeris.setWriterId("na");
		answeris.setAttachedFile(fileName); // 파일시스템 경로를 db에 저장
		//answeris.setAttachedFile(req.getFilesystemName("attached")); // 파일시스템 경로를 db에 저장

		AnswerisDao answerisDao = new JdbcAnswerisDao();
		answerisDao.insert(answeris);

		response.sendRedirect("list");
	}
}
