import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hell")
public class Nana extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


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
		
		int cnt = 0;
		
		String temp = request.getParameter("cnt");
		if(temp !=null && !temp.equals(""))		//	POST 변수가 지정 안됬을시 NULL / 빈문자열 전송시 ""
			cnt = Integer.parseInt(temp);
		for (int i = 0; i < cnt; i++) {
			out.println("하이 Servlet<br>");
		}
		
	}

}