<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항목록</title>
<link href="css/layout.css" type="text/css" rel="stylesheet" />
<link href="css/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header 부분 -->
	
<header id="header">
	<div>
		<img class="hamburger-button"
			src="images/ic_menu_black_24dp_1x.png" />
	</div>
	<div class="content-container">
		<!-- ---------------------------<header>--------------------------------------- -->
		
		<h1 id="logo">
			<a href="index.jsp">
				<img src="images/logo.png" alt="뉴렉처 온라인" />
				
			</a>
		</h1>

		<section>
			<h1 class="hidden">헤더</h1>

			<nav id="main-menu">
				<h1>메인메뉴</h1>
				<ul>
					<li><a href="guide">학습가이드</a></li>
					
					<li><a href="course">강좌선택</a></li>
					<li><a href="answeris/index.jsp">AnswerIs</a></li>					
				</ul>
			</nav>

			<div class="sub-menu">
								
				<section id="search-form">
					<h1>강좌검색 폼</h1>
					<form>
						<fieldset>
							<legend>과정검색필드</legend>
							<label>과정검색</label> <input type="text" value="" /><input
								type="submit" value="검색" />
						</fieldset>
					</form>
				</section>
				
				<nav id="acount-menu">
					<h1 class="hidden">회원메뉴</h1>
					<ul>
						<li><a href="/index">HOME</a></li>
						
						
						
							<li>
								<form action="/logout" method="post">
									<input type="hidden" name="" value="" />
									<input type="submit" value="로그아웃" style="border:none;background: none;vertical-align: middle;font-size: 10px;color:#979797;font-weight: bold;" />
									
								</form>								
							</li>
						

						

						<li><a href="/member/agree">회원가입</a></li>
					</ul>
				</nav>

				<nav id="member-menu" class="linear-layout">
					<h1 class="hidden">고객메뉴</h1>
					<ul class="linear-layout">
						<li><a href="student/index.jsp"><img
								src="images/txt-mypage.png" alt="마이페이지" /></a></li>
						<li><a href="/customer/notice"><img
								src="images/txt-customer.png" alt="고객센터" /></a></li>
					</ul>
				</nav>

			</div>
		</section>

	</div>
	<div class="search-button">
		<img src="images/ic_search_black_24dp_1x.png" />
	</div>
	<div class="more-vert-button">
		<img src="images/ic_more_vert_black_24dp_1x.png" />
	</div>
</header>
	<!-- --------------------------- <body> --------------------------------------- -->

	<!-- content 부분 -->



<div id="visual" class="">
	<div class="content-container">
		<h2 class="hidden">신규 강좌목록</h2>
		<!-- <ul class="mov-button">
			<li class="prev-button">이전</li>
			<li class="next-button">다음</li>
		</ul> -->
		<ul class="banner">
		
			
			<li class="banner1">
				<a href="customer/event/1">
					<img src="admin/board/event/1/banner-java.png" data-id="1" style="cursor: pointer;" />
				</a>
			</li>
		
		</ul>
		
		
		
		<ul class="banner-button-list" style="color:#ffff00; font-size:20px;position:absolute; left:10px; bottom:5px; z-index: 100px; display: flex; flex-direction: row;">			
			<li></li>			
		</ul>
		
	</div>
	
</div>

<div id="notice">
	<div class="content-container">
		<span class="title">제대로된 전문가들이 만들어가는 <span style="color:yellow;font-size:15px;">IT PROFESSIONAL <span style="color:#00ffff;">NEW</span> ONLINE <span style="color:#00ffff;">LECTURE</span> MARKET</span></span>
		<!--<a class="detail-button">자세히</a>-->
	</div>
</div>
<!-- ----- 공지사항 줄 ------------------------------------------------------------------------------ -->
<div id="information">
	<div class="content-container">
		<section class="guide">
			<h1 class="title">강의 플레이어 사용방법 안내</h1>
			<div class="margin-top">
				<a href="customer/faq/1"><img src="images/customer/installInfo.png" /></a>
			</div>
			<!-- <div>
            2
            </div>
            <div>
            3
            </div> -->
		</section>
		<section class="course-info">
			<h1 class="title text-center">뉴렉처 하이브리드 과정 모집</h1>
			<ul class="list">
				<li>현재 모집 과정이 없습니다.</li>
			</ul>
		</section>
		<section class="notice">
			<h1 class="title">공지사항</h1>
			<ul class="list margin-top">
				
				<li>
					<span class="notice-title">
						<a href="customer/notice/2">sdsdsd</a>
					</span>
					<span>2018-02-03</span>
				</li>
				
				<li>
					<span class="notice-title">
						<a href="customer/notice/1">뉴렉처 시스템이 달라졌습니다.</a>
					</span>
					<span>2018-02-02</span>
				</li>
				
			</ul>
		</section>
	</div>
</div>


<!-- ----- 커뮤니티 시작 줄 -------------------------------------------------------------------------------------------- -->
<section class="list-community-index margin-top" style="position: relative;">
	<h1 class="hidden">커뮤니티 목록</h1>
	<ul class="content-container border">
		
		<li class="item-community question border">
			<div class="visual" style="cursor: pointer;" onclick="location.href='answeris/index';">
				<div class="info">
					<div>Answer is ...</div>
					<div class="count">
						<span>2</span>
					</div>
				</div>
			</div>
			<div class="title">
			
				<a href="answeris/1" class="-text- dark-gray">
					<span class="color-orange text-strong text-indent">NEW : </span>
					문제없던 톰캣 서버에서 다음과 같은 오류가 발생하면서 계속해서 시작오류가 발생한다면...
				</a>
			
			</div>
		</li>
		
		<li class="item-community talk border">
			<div class="visual">
				<div class="info">
					<div>어떻게 생각해?</div>
					<div class="count">
						<span>1</span>
					</div>
				</div>
			</div>
			<div class="title">
				<a href="" class="-text- dark-gray"><span class="color-orange text-strong text-indent">NEW : </span>프로그래밍은 무엇부터 공부해야 할까요?프로그래밍은 무엇부터 공부해야 할까요?</a>
			</div>
		</li>
		
		<li class="item-community join border">
			<div class="visual">
				<div class="info">
					<div>신규 가입회원</div>
					<div class="count">
						<span>5</span>
					</div>
				</div>
				<section class="list list-vertical list-join-member">
					<h1 class="hidden">신규회원목록</h1>
					<ul>
						
						<li class="item-join-member">
							<div>
							
								<span style="background:url('images/profile.png') no-repeat center; background-size: contain; "></span>
							
							
							</div>
							<div>
								<div class="text-ellipsis text-strong color-light">tes*****</div>
								<div class="text-strong">2018-02-12 22:27</div>
							</div>
						</li>
						
						<li class="item-join-member">
							<div>
							
															
								<span style="background:url('..student/test03/20171008_083951.jpg') no-repeat center;background-size: contain; "></span>
							
							</div>
							<div>
								<div class="text-ellipsis text-strong color-light">tes*****</div>
								<div class="text-strong">2018-02-12 16:35</div>
							</div>
						</li>
						
						<li class="item-join-member">
							<div>
							
								<span style="background:url('images/profile.png') no-repeat center; background-size: contain; "></span>
							
							
							</div>
							<div>
								<div class="text-ellipsis text-strong color-light">tes*****</div>
								<div class="text-strong">2018-02-02 23:10</div>
							</div>
						</li>
						
						<li class="item-join-member">
							<div>
							
								<span style="background:url('images/profile.png') no-repeat center; background-size: contain; "></span>
							
							
							</div>
							<div>
								<div class="text-ellipsis text-strong color-light">new*****</div>
								<div class="text-strong">2018-01-27 21:18</div>
							</div>
						</li>
						
						<li class="item-join-member">
							<div>
							
								<span style="background:url('images/profile.png') no-repeat center; background-size: contain; "></span>
							
							
							</div>
							<div>
								<div class="text-ellipsis text-strong color-light">tes*****</div>
								<div class="text-strong">2018-01-27 19:18</div>
							</div>
						</li>
						
					</ul>
					
				</section>
			</div>
			<div class="title">
				<span class="-text- dark-gray">
					총 회원 : <span class="color-notice">5</span> 명, 
					신규회원 : <span class="color-warning">5</span> 명
				</span>
			</div>
		</li>

	 
</section>



<!-- ----- 강좌 목록 시작 줄 --------------------------------------------------------------------------------------------------------- -->
<main id="course">
<section class="content-container list list-horizontal list-course list-course-index">
	<h1>온라인 <span class="color-orange">단과 과정</span></h1>
	<div>

	</div>
	
	<ul>
					
			<li class="item-course normal new">
				<div>
					<a href="course/8"><img src="course/8/oracle.png" /></a>
					
				</div>
				<div>
					<div>
						<a href="course/8"><span class="text-strong text-ellipsis">Oracle SQL 프로그래밍</span></a>
					</div>
					<div class="price">
						<span class="normal ">
							<span class="text-orange text-strong">
								55,000								
							</span>	원
						</span> <span class="event">
							
							
 							
						</span>
					</div>
					<div class="footer text-strong">
						<span class="writer">선생님 : newlec </span> 
						<span class="update">개설일 : 2018-02-06
						</span>
					</div>
				</div>
			</li>
			
			
					
			<li class="item-course normal normal">
				<div>
					<a href="course/7"><img src="course/7/spring.png" /></a>
					
				</div>
				<div>
					<div>
						<a href="course/7"><span class="text-strong text-ellipsis">스프링 3.x MVC 웹 프로그래밍</span></a>
					</div>
					<div class="price">
						<span class="normal ">
							<span class="text-orange text-strong">
								59,400								
							</span>	원
						</span> <span class="event">
							
							
 							
						</span>
					</div>
					<div class="footer text-strong">
						<span class="writer">선생님 : newlec </span> 
						<span class="update">개설일 : 2013-12-10
						</span>
					</div>
				</div>
			</li>
					
					
			<li class="item-course normal normal">
				<div>
					<a href="course/6"><img src="course/6/jsp.png" /></a>
				
				</div>
				<div>
					<div>
						<a href="course/6"><span class="text-strong text-ellipsis">자바 서블릿/JSP 프로그래밍</span></a>
					</div>
					<div class="price">
						<span class="normal ">
							<span class="text-orange text-strong">
								59,400								
							</span>	원
						</span> <span class="event">
							
							
 							
						</span>
					</div>
					<div class="footer text-strong">
						<span class="writer">선생님 : newlec </span> 
						<span class="update">개설일 : 2013-08-12
						</span>
					</div>
				</div>
			</li>
			
					
			<li class="item-course normal event">
				<div>
					<a href="course/1"><img src="course/1/computer.png" /></a>
					
				</div>
				<div>
					<div>
						<a href="course/1"><span class="text-strong text-ellipsis">컴퓨터 프로그래밍</span></a>
					</div>
					<div class="price">
						<span class="normal deprecated">
							<span class="text-gray">
								22,000								
							</span>	원
						</span> <span class="event">
							
							
								<span class="color-red text-strong">
									0									
								</span>원
                            
 							
						</span>
					</div>
					<div class="footer text-strong">
						<span class="writer">선생님 : newlec </span> 
						<span class="update">개설일 : 2018-01-28
						</span>
					</div>
				</div>
			</li>
		
		
	</ul>

	<div class="more">
		<!-- <span class="border padding">단과 과정 목록 더보기</span> -->
	</div>
</section>

<!-- ------- 온라인 패키지 과정 ------------------------------------------------------------------------------------------------- -->

<div class="content-container">
	<h3 class="-text- center green bold">협력업체</h3>
	<ul class="-list- horizontal center -margin- bottom top b20">
		<li><img src="images/namoolab.png" /></li>
		<li><img src="images/notepubs.png" /></li>
		<li><img src="images/hanbit.png" /></li>
		<li><img src="images/acorn.png" /></li>
		<li><img src="images/sist.png" /></li>
	</ul>
</div>
</main>
<script>
	
</script>
	
	
	<!-- ------------------- <footer> --------------------------------------- -->
	


<footer id="footer">
	<div class="content-container">
		<h2 id="footer-logo"><img src="images/logo-footer.png" alt="회사정보"></h2>

		<div id="company-info">
			<dl>
				<dt>주소:</dt>
				<dd>서울특별시 마포구 토정로35길 11, 인우빌딩 5층 266호</dd>			
				<dt>관리자메일:</dt>
				<dd>admin@newlecture.com</dd>
			</dl>
			<dl>
				<dt>사업자 등록번호:</dt>
				<dd>132-18-46763</dd>
				<dt>통신 판매업:</dt>
				<dd>신고제 2013-서울강동-0969 호</dd>
			</dl>
			<dl>
				<dt>상호:</dt>
				<dd>뉴렉처</dd>
				<dt>대표:</dt>
				<dd>박용우</dd>
				<dt>전화번호:</dt>
				<dd>070-4206-4084</dd>
			</dl>
			<div id="copyright" class="margin-top">Copyright ⓒ newlecture.com 2012-2014 All Right Reserved.
				Contact admin@newlecture.com for more information</div>
		</div>
	</div>
</footer>
</body>
</html>