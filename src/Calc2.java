import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ADD2")
public class Calc2 extends HttpServlet {

	@Override
	// service 메서드는 get방식 post방식 둘다 처리 가능하다.
	// 전송처리 메서드 service(), doGet(), doPost()
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		 

		
		//response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html; charset=UTF-8");
		//OutputStream os = response.getOutputStream();
		/*PrintStream out = new PrintStream(os);*/
		/*PrintWriter out = new PrintWriter(os, true);*/
		//PrintWriter out = new PrintWriter(new OutputStreamWriter(os, StandardCharsets.UTF_8), true);

		// 500오류 서버단의 코드실행중 오류
		// 404오류 URL 주소 오류
		

		int result = 0;
		
		String temp = request.getParameter("x");
		String temp2 = request.getParameter("y");
		if((temp !=null && !temp.equals(""))&&(temp2 !=null && !temp2.equals("")))		//	POST 변수가 지정 안됬을시 NULL / 빈문자열 전송시 ""
			result = Integer.parseInt(temp) + Integer.parseInt(temp2);
		
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>Insert title here</title>");
		out.write("<style type=\"text/css\">");
		out.write("</style>");
		out.write("</head>");
		out.write("<body>");
		out.write("	<div>");
		out.write("		<form method=\"post\">");
		out.write("			<div>");
		out.write("				<label>X : </label>");
		out.write("				<input type=\"text\" name=\"x\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<label>Y : </label>");
		out.write("				<input type=\"text\" name=\"y\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input id=\"btn-submit\" type=\"submit\" value=\"덧셈\" formmethod=\"get\">");
		out.write("				<input id=\"btn-app\" type=\"submit\" value=\"Application\">");
		out.write("				<input id=\"btn-session\" type=\"submit\" value=\"Session\">");
		out.write("				<input id=\"btn-cookie\" type=\"submit\" value=\"Cookie\">");
		out.write("			</div>");
		out.write("			<div>");
		out.println("X+Y = " + result);
		out.write("			</div>");
		out.write("		</form>");
		out.write("	</div>");
		out.write("</body>");
		out.write("</html>");
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("메롱~~");
	}

}