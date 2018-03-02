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

@WebServlet("/add")
public class Calc extends HttpServlet {

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
		int x = 0;
		int y = 0;
		
		String temp = request.getParameter("x");
		String temp2 = request.getParameter("y");
		String result_ = request.getParameter("result");
		
		if(temp != null && !temp.equals(""))		//	POST 변수가 지정 안됬을시 NULL / 빈문자열 전송시 ""
			x = Integer.parseInt(temp); 
		
		if(temp2 != null && !temp2.equals(""))
			y = Integer.parseInt(temp2);
		
		if(result_ != null && !result_.equals(""))
			result = Integer.parseInt(result_);
		
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
		out.write("		<form action=\"add\" method=\"post\">");
		out.write("			<div>");
		out.write("				<label>X : </label>");
		out.write("				<input type=\"text\" name=\"x\" value=\""+x+"\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<label>Y : </label>");
		out.write("				<input type=\"text\" name=\"y\" value=\""+y+"\">");
		out.write("			</div>");
		out.write("			<div>");
		out.write("				<input id=\"btn-submit\" type=\"submit\" name=\"btn\" value=\"덧셈\">");
		out.write("				<input id=\"btn-app\" type=\"submit\" name=\"btn\" value=\"Application\">");
		out.write("				<input id=\"btn-session\" type=\"submit\" name=\"btn\" value=\"Session\">");
		out.write("				<input id=\"btn-cookie\" type=\"submit\" name=\"btn\" value=\"Cookie\">");
		out.write("			</div>");
		out.write("			<div>");
		out.println("X+Y = " + result);
		out.write("<input type=\"hidden\" name=\"result\" value=\""+result+"\">");
		out.write("			</div>");
		out.write("		</form>");
		out.write("	</div>");
		out.write("<div>");
		out.write("<a href=\"mypage\">마이페이지</a>");
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		
		int result = 0;
		int x = 0;
		int y = 0;
		
		String btn = null;
		
		String btn_ = request.getParameter("btn");
		String temp = request.getParameter("x");
		String temp2 = request.getParameter("y");
		
		if(temp != null && !temp.equals(""))
			x = Integer.parseInt(temp);
		if(temp2 != null && !temp2.equals(""))
			y = Integer.parseInt(temp2);
		
		if(btn_ != null && !btn_.equals(""))
			btn = btn_;
		
		switch(btn) {
		case"덧셈":
			result = x + y;
		break;
		case"Application":{	// 중괄호는 안써도 되지만 자신만의 지역변수를 만들어 사용하고 싶으면 사용한다.
			ServletContext application = request.getServletContext();
			
			application.setAttribute("result", request.getParameter("result"));
		}break;
		case"Session":{
			HttpSession session = request.getSession();
			session.setAttribute("result", request.getParameter("result"));
		}break;
		// 쿠키는 헤더에 정보를 심어서 브라우져로 보내주는 것으로 이해???
		// 쿠키는 유효기간을 지정해줘야함
		// 오랜시간 저장할 데이터라면 쿠키저장소를 사용하는것이 좋음
		// 쿠키자원을 사용하겠다는 공지가 필요함
		case"Cookie":{
			String tempRs = request.getParameter("result");
			Cookie cookie = new Cookie("result", tempRs);	// 파라미터는 문자열타입만 지정가능
			cookie.setMaxAge(60*60*24);	//	유효기간 설정 메서드 (value 는 초단위)
			response.addCookie(cookie);
		}break;	
		}
		//response.sendRedirect("add?result="+result); //Redirect은 무조건 get요청
		response.sendRedirect(String.format("add?x=%d&y=%d&result=%d", x, y, result));//상태값 유지
				
	}
	
}