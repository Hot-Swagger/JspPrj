<%@page import="com.newlecture.jspprj.dao.AnswerisDao"%>
<%@page import="com.newlecture.jspprj.dao.jdbc.JdbcAnswerisDao"%>
<%@page import="com.newlecture.jspprj.entity.Answeris"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 액션태그 -->
<%-- <jsp:useBean id="answeris" class="com.newlecture.jspprj.entity.Answeris">
	<jsp:setProperty name="answeris" property="title" param="title"/>
</jsp:useBean> --%>
	
<%
	/* out.print(answeris.getTitle()); */
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
	
 	response.sendRedirect("list.jsp");
%>