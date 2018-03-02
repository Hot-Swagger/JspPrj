

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyPage
 */
@WebServlet("/mypage")
public class MyPage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int a = 0;
		int s = 0;
		int c = 0;
		
		ServletContext application = request.getServletContext();
		Object a_ = application.getAttribute("result");
		
		if(a_ != null)
			a = Integer.parseInt(a_.toString());
		/*String a_ = String.valueOf(application.getAttribute("result"));
		if(a_ != "null" && !a_.equals(""))
			a = Integer.parseInt(a_);*/
		
		HttpSession session = request.getSession();
		String s_ = String.valueOf(session.getAttribute("result"));
		
		if(s_ != "null" && !s_.equals(""))
			s = Integer.parseInt(s_);
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cook : cookies) {
			if(cook.getName().equals("result"))
				c = Integer.parseInt(cook.getValue());
		}
		
		out.write("<html>");
		out.write("	<body>");
		out.write("		<div>application:"+a+"</div>");
		out.write("		<div>session: "+s+"</div>");
		out.write("		<div>cookie: "+c+"</div>");
		out.write("		<div><a href=\"add\">계산하기</a></div>");
		out.write("	</body>");
		out.write("</html>");
	}

}
