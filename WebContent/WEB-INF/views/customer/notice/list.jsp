<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice List</title>
<link href="../../css/style.css" type="text/css" rel="stylesheet" />
<style type="text/css">

</style>
<script type="text/javascript">
	var json = "{kor:30, eng:40, math:60}";
	
</script>
</head>
<body>
	<header id="header">
		<div class="root-container">
			<h1 id="logo" ><img src="../../images/logo.png" alt="뉴렉처 온라인" /></h1>
			
			<section>

				<h1 class="hidden">헤더1</h1>
				
				<nav class="hor-menu main-menu first-pad-none">
					<h1 class="hidden">메인메뉴</h1>
					<ul>
						<li><a href="" >학습가이드</a></li>
						<li><a href="" >뉴렉과정</a></li>
						<li><a href="">강좌선택</a></li>
					</ul>
				</nav>
				
				<section class="search-form">
					<h1 class="hidden">강좌검색 폼</h1>
					<form>
						<fieldset>
							<legend class="hidden">검색필드</legend>
							<label>과정검색</label>
							<input type="text" />
							<input class="btn btn-img btn-search" type="submit" value="검색" />
						</fieldset>
					</form>
				</section>
				
				<nav class="hor-menu member-menu first-pad-none">
					<h1 class="hidden">회원 메뉴</h1>
					<ul>
						<li>HOME</li>
						<li>로그인</li>
						<li>회원가입</li>
					</ul>
				</nav>
				
				<nav class="hor-menu quick-menu">
					<h1 class="hidden">간편 메뉴</h1>
					<ul>
						<li><img src="../../images/txt-mypage.png" alt="마이페이지" /></li>
						<li><img src="../../images/txt-customer.png" alt="고객센터" /></li>
					</ul>
				</nav>
			</section>
		</div>
	</header>
	<!-- visual 시작 -->
	<div id="visual">
		<div class="root-container">			
			
		</div>
	</div>
	<div id="body">
		<div class="root-container clear-fix">
			<!-- --- aside 시작-------------------------------------------------------- -->
			<aside id="aside">		
				<h1>고객센터</h1>
				
				<nav class="aside-menu">
					<h1 class="hidden">고객센터 메뉴</h1>
					<ul>
						<li>공지사항</li>
						<li>1:1고객문의</li>
						<li>학습안내</li>
					</ul>
				</nav>
				<nav>
					<h1 class="title">추천사이트</h1>			
					<ul>
						<li>앤서이즈</li>
						<li>W3C</li>
						<li>마이크로소프트</li>
					</ul>
				</nav>
				
			</aside>
			<!-- --- main 시작 ---------------------------------------------------------------- -->
			
			<main id="main">
				<!-- <div class="test-flex">
					<div class="box1">1</div>
					<div class="box2">2</div>
					<div class="box3">3</div>
					<div class="box4">4</div>
					<div class="box5">5</div>
					<div class="box6">6</div>
					<div class="box7">7</div>
					<div class="box8">8</div>
				</div> -->
				<section>
					<h1>
						공지사항
					</h1>
					
					<section>
						<h1 class="hidden">경로</h1>
						<ul>
							<li>home</li>
							<li>고객센터</li>
							<li>공지사항</li>
						</ul>
					</section>
					
					<section>
						<h1 class="hidden">공지사항 검색 폼</h1>
						<form>
						  <label>검색어</label>
						  <input type="text" />
						  <input class="btn btn-text btn-default" type="submit" value="검색" />
						</form>
					</section>
					
					<section>
						<h1 class="hidden">공지사항 검색 목록</h1>
						<table class="table">
							<thead>
								<tr>
									<td class="width-sm">번호</td>
									<td class="width-ex">제목</td>
									<td class="width-md">작성자</td>
									<td class="width-md">작성일</td>
									<td class="width-sm">조회수</td>
								</tr>
							</thead>
							
							<tbody>							
							<%-- <%for(Notice n : list) {%>
								<tr>
									<td class="width-sm"><%=n.getId() %>	</td>
									<td class="width-ex align-left text-indent text-ellipsis">
										<a href="">
											<span class="color-notice">
asdfasdfasdfasdfas 동해물과 백두산이 마르고 닳도로 하느님이 보우하사 우리나라만세<%=n.getTitle()%>
											</span>
										</a>
									</td>
									<td class="width-md"><%=n.getWriterId() %></td>
									<td class="width-md">2017-12-18</td>
									<td class="width-sm">54</td>
								</tr>
							<%} %> --%>
							</tbody>
							
						</table>
					</section>
<!-- ------------------------------------------------ -->
<%-- 					<section>
						<h1>공지사항 검색 목록</h1>
						<div class="table">
							<div >
								<div class="tr">
									<div class="td width-sm">번호</div>
									<div class="td width-ex">제목</div>
									<div class="td width-md">작성자</div>
									<div class="td width-md">작성일</div>
									<div class="td width-sm">조회수</div>
								</div>
							</div>
							
							<div>
							<%for(Notice n : list) {%>
								<div class="tr">
									<div class="td width-sm"><%=n.getId() %>	</div>
									<div class="td width-ex align-left text-indent text-ellipsis">
										<a href="">
											<span class="color-notice">
asdfasdfasdfasdfas 동해물과 백두산이 마르고 닳도로 하느님이 보우하사 우리나라만세<%=n.getTitle()%>
											</span>
										</a>
									</div>
									<div class="td width-md"><%=n.getWriterId() %></div>
									<div class="td width-md">2017-12-18</div>
									<div class="td width-sm">54</div>
								</div>
							<%} %>
							</div>
							
						</div>
					</section>
				
					<div>
					1/1 pages
					</div>
					<div>
						<a href="reg" class="button default-button">글쓰기 버튼</a>
						<a href="reg" class="button cancel-button">테스트</a>
					</div>
					<div>
					 이전1다음
					</div>
				 </section> --%>
			 </main>
			 <!-- <div style="clear:left;">
			 </div> -->
		 </div>
	 </div>
	 
	 <footer id="footer">
	 	<div class="root-container">
	<!--  회사정보
	주소서울특별시 마포구 토정로35길 11, 5층 266호(용강동, 인우빌딩)관리자메일admin@newlecture.com사업자 등록번호132-18-46763 통신 판매업 신고제 2013-서울강동-0969 호 상호뉴렉처대표박용우전화번호070-4206-4084 [죄송합니다. 당분간 문의내용은 고개센터 메뉴에서 1:1 문의를 이용해주시기 바랍니다]
	Copyright ⓒ newlecture.com 2012-2014 All Right Reserved. Contact admin@newlecture.com for more information -->
		</div>
	</footer>
</body>
</html>










    