<%@page import="com.newlecture.jspprj.entity.AnswerisView"%>
<%@page import="java.util.List"%>
<%@page import="com.newlecture.jspprj.dao.jdbc.JdbcAnswerisDao"%>
<%@page import="com.newlecture.jspprj.dao.AnswerisDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" uri="http://www.newlecture.com/jsp/tags/control" %>
<!-- jstl (태그라이브러리 import)
출력에 필요한 if / for문 등은 core lib에 포함
출력데이터의 포맷 설정을 위한 formating lib
문자나 숫자등의 데이터 형변환을 위한 functions lib -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.servletContext.contextPath}" />


		<main class="main" ng-controller="notice-controller">
			<h2 class="main title">내 오류노트</h2>
			
			<div class="breadcrumb">
				<h3 class="hidden">경로</h3>
				<ul>
					<li>home</li>
					<li>커뮤니티</li>
					<li>오류노트</li>
				</ul>
			</div>
			
			<div class="search-form margin-top first align-right">
				<h3 class="hidden">고객문의  검색폼</h3>
				<form class="table-form">
					<fieldset>
						
						<legend class="hidden">고개문의 검색 필드</legend>
						<label class="hidden">검색분류</label>
						<select name="f">
							<option  value="title">제목</option>
							<option  value="errorCode">에러코드</option>
							<option  value="errorMessage">에러메시지</option>
						</select>
						<label class="">검색어</label>
						<input type="text" name="q" value="" />
						<input class="btn btn-search" type="submit" value="검색" />
					</fieldset>
				</form>
			</div>
						
			<div class="notice margin-top">
				<h3 class="hidden">고객문의 목록</h3>
				<table class="table">
					<thead>
						<tr>
							<th class="expand">제목</th>
							<th class="w100">언어</th>
							<th class="w100">플랫폼</th>
							<th class="w100">작성일</th>
						</tr>
					</thead>
					<tbody>
					<%-- <%for(AnswerisView an : list){ %> --%>
					<c:forEach var="ai" items="${list}">
						<tr>
							<td class="text-align-left text-indent text-ellipsis"><a href="detail?id=${ai.id}">${ai.title}</a></td>
							<td>
								<%-- <%((List<AnswerisView>)request.getAttribute("list")).get(0).getLanguage(); %> --%>
								${ai.language}
							</td>
							<td class="text-ellipsis">${ai.platform }</td>
							<td>
								${ai.regDate}
							</td>
						</tr>
					</c:forEach>
					<%-- <%} %> --%>
					<%-- <%if(list.size()==0){ %> --%>
					<c:if test="${empty list}">
						<tr>
							<td colspan="4">작성된 글이 없습니다.</td>
						</tr>
					</c:if>
					<%-- <%} %> --%>
					<!-- <tr>
						<td class="text-align-left text-indent text-ellipsis"><a href="detail.jsp">문제없던 톰캣 서버에서 다음과 같은 오류가 발생하면서 계속해서 시작오류가 발생한다면...</a></td>
						<td>java:8</td>
						<td class="text-ellipsis">java:8, jsp:2.3</td>
						<td>
							2018-02-14
						</td>
					</tr> -->
					
					
					
					</tbody>
				</table>
			</div>
			
			<div class="indexer margin-top align-right">
				<h3 class="hidden">현재 페이지</h3>
				<div><span class="text-orange text-strong">${empty param.p ? 1 : param.p}</span> / ${lastPage} pages</div>
			</div>
			
			<div class="margin-top text-align-right">
				<a href="reg" class="btn-text btn-default">글쓰기</a>
			</div>

			<div class="margin-top align-center pager">
		
	<div>
		
		<c:if test="${startNum != 1}">
		<a class="btn btn-prev>" href="?p=${startNum-1}">이전</a>
		</c:if>	
		<c:if test="${startNum == 1}">
		<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>
		</c:if>
	</div>
	<ul class="-list- center">
		
				<c:forEach var="i" begin="0" end="4">
					<c:if test="${startNum+i <= lastPage}">
					<li><a href="?p=${startNum+i}&t=&q=" >${startNum+i}</a></li>
					</c:if>
				</c:forEach>
	</ul>
	<div>
			<c:if test="${startNum+5 <= lastPage}">
			<a class="btn btn-next" href="?p=${startNum+5}">다음</a>
			</c:if>
			<c:if test="${startNum+5 > lastPage}">
			<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>
			</c:if>
	</div>
	
			</div>
		</main>