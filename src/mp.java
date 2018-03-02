

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
 * Servlet implementation class mp
 */
@WebServlet("/mp")
public class mp extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		int a = 0;
		int s = 0;
		int c = 0;
		
		ServletContext application = request.getServletContext();
		Object app = application.getAttribute("result");
		if(app != null)
			a = Integer.parseInt(app.toString());
		
		HttpSession session = request.getSession();
		Object sess = session.getAttribute("result");
		if(sess != null)
			s = Integer.parseInt(sess.toString());
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cook : cookies) {
			if(cook.getName().equals("result"))
				c = Integer.parseInt(cook.getValue());
		}
				
		out.write("<html>");
		out.write("	<body>");
		out.write("		<div>Application : " + a + "</div>");
		out.write("		<div>Session : " + s +"</div>");
		out.write("		<div>Cookie : " + c + "</div>");
		out.write("		<div>");
		out.write("			<a href=\"add3\">계산기</a>");
		out.write("		</div>");
		out.write("	</body>");
		out.write("</html>");
		
	}

}
