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

@WebServlet("/add3")
public class Calc3 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		int x = 0;
		int y = 0;
		int result = 0;
		
		String tempX = req.getParameter("x");
		if(tempX != null && !tempX.equals(""))
			x = Integer.parseInt(tempX);
		
		String tempY = req.getParameter("y");
		if(tempY != null && !tempY.equals(""))
			y = Integer.parseInt(tempY);
		
		String tempRs = req.getParameter("result");
		if(tempRs != null && !tempRs.equals(""))
			result = Integer.parseInt(tempRs);
		
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>Insert title here</title>");
		out.write("<style type=\"text/css\">");
		out.write("</style>");
		out.write("</head>");
		out.write("	<body>");
		out.write("		<form action=\"add3\" method=\"post\">");
		out.write("			<div>");
		out.write("				<label>x: </label>");
		out.write("				<input type=\"text\" name=\"x\" value=\""+x+"\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<label>y: </label>");
		out.write("				<input type=\"text\" name=\"y\" value=\""+y+"\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input type=\"submit\" name=\"btn\" value=\"덧셈\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input type=\"submit\" name=\"btn\" value=\"Application\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input type=\"submit\" name=\"btn\" value=\"Session\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input type=\"submit\" name=\"btn\" value=\"Cookie\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				합계: " + result);
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input type=\"hidden\" name=\"result\" value=\""+result+"\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<a href=\"mp\">마이페이지</a>");
		out.write("			</div>");
		out.write("		</form>");
		out.write("	</body>");
		out.write("</html>");
		
		
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		int x = 0;
		int y = 0;
		int result = 0;
		String btn = null;
		
		String tempX = req.getParameter("x");
		if(tempX != null && !tempX.equals(""))
			x = Integer.parseInt(tempX);
		
		String tempY = req.getParameter("y");
		if(tempX != null && !tempX.equals(""))
			y = Integer.parseInt(tempY);
		
		String tempBtn = req.getParameter("btn");
		if(tempBtn != null && !tempBtn.equals(""))
			btn = tempBtn;
		
		switch(btn) {
		case"덧셈":
			result = x + y;
			break;
		case"Application":{
			ServletContext application = req.getServletContext();
			String tempRs = req.getParameter("result");
			application.setAttribute("result", tempRs);
		}break;
		case"Session":{
			HttpSession session = req.getSession();
			String tempRs = req.getParameter("result");
			session.setAttribute("result", tempRs);
		}break;
		case"Cookie":{
			String tempRs = req.getParameter("result");
			Cookie cookie = new Cookie("result", tempRs);
			cookie.setMaxAge(60*60*24);
			resp.addCookie(cookie);
		}
			break;
		}
		
		resp.sendRedirect(String.format("add3?x=%d&y=%d&result=%d", x,y,result));
	}
	
}
