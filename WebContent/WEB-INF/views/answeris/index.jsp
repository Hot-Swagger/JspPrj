<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- <link href="../css/header.css" rel="stylesheet" type="text/css" /> -->
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="item-vertical item-center bg-gray">

	<header id="header">
		<div class="content-box content-container">
			<!-- <a href="../index"><img src="../images/logo.png" /></a>
			<label>Answer is ...</label>
			
			<h1 class="hidden">헤더</h1> -->
			
			<h1 id="logo">
				<a href="../index.jsp"> 
					<img src="../images/logo.png" alt="뉴렉처 온라인" />
					
				</a>
			</h1>
		
			<nav id="main-menu">
				<h1>메인메뉴</h1>
				<ul>
					<li><a href="/guide">학습가이드</a></li>
					
					<li><a href="/course">강좌선택</a></li>
					<li><a href="index.jsp">AnswerIs</a></li>					
				</ul>
			</nav>
							
			<section id="search-form">
				<h1>강좌검색 폼</h1>
				<form action="/answeris">
					<fieldset>
						<legend>답 검색필드</legend>
							<select name="f">
								<option>제목</option>
								<option>오류코드</option>
								<option>오류메시지</option>
							</select>
							<label class="hidden">해답검색</label> 
							<input name="q" type="text" />
							<input type="submit" value="검색" />
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
					<li><a href="../student/index.jsp"><img
							src="../images/txt-mypage.png" alt="마이페이지" /></a></li>
					<li><a href="/customer/notice"><img
							src="../images/txt-customer.png" alt="고객센터" /></a></li>
				</ul>
			</nav>
				
			
		</div>
	</header>
	<div class="content-box">
		<main id="main" class="main margin-top">
			<div class="visual" style="position: relative;">
				<section class="list-answerer">
					<h1 style="color:#ffffff;text-align: center;font-weight: bold;font-size:14px;">Answerer&nbsp;&nbsp;순위</h1>
					<ul class="margin-top">
					
						<li class="item-answerer">
							<div>1</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>2</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>3</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>4</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>5</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>6</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>7</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>8</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>9</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>10</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
						<li class="item-answerer">
							<div>11</div>
							<div><span></span></div>
							<div>
								<div class="color-light text-strong">newlec</div>
								<div>자산 1243개 보유</div>
								<div>담기 229 / 좋아요 234</div>
							</div>
						</li>
					
					</ul>
				</section>
			</div>
			<div class="top-bar">
				<img src="images/write-green.png" style="height: 50px; margin-right: 20px;" />
				<a href="../student/community/answeris/list.jsp">기록하는 습관 : 우리가 틈틈히 기록한 모든 내용이 나에게도 도움이 되지만 다른 사람들에게는 꼭 필요한 "Answer"가 될 수 있습니다.</a>
			</div>
			
			<div class="list-horizontal list-col2 list-seperated margin-top">
				<section class="list list-answeris">
					<h1>
						많이 본 Answer
						<span>2018-02-20 16:07 기준</span>
					</h1>
					<ul>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">1.&nbsp;&nbsp;입력 상자에 다음처럼 경계선이 생기는 것이 싫을 경우</a></div>
							<div>
								
								에러메시지 없음
							</div>
							<div class="text-align-center"><span>조회 : 1325</span><span>댓글: 1</span></div>
						</li>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">2.&nbsp;&nbsp;문제없던 톰캣 서버에서 다음과 같은 오류가 발생하면서 계속해서 시작오류가 발생한다면...</a></div>
							<div>
								Server Tomcat v9.0 Server at localhost failed to start
								
							</div>
							<div class="text-align-center"><span>조회 : 1325</span><span>댓글: 1</span></div>
						</li>
					
					</ul>
				</section>
				<section class="list list-answeris">
					<h1>
						새로 등록된 Answer
						<span>2018-02-20 16:07 기준</span>
					</h1>
					<ul>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">1.&nbsp;&nbsp;입력 상자에 다음처럼 경계선이 생기는 것이 싫을 경우</a></div>
							<div>
								
								에러메시지 없음
							</div>
							<div class="text-align-center"><span>언어 : javascript:5</span>/<span>조회 : 1325</span>/<span>댓글 1</span></div>
						</li>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">2.&nbsp;&nbsp;문제없던 톰캣 서버에서 다음과 같은 오류가 발생하면서 계속해서 시작오류가 발생한다면...</a></div>
							<div>
								Server Tomcat v9.0 Server at localhost failed to start
								
							</div>
							<div class="text-align-center"><span>언어 : java:8</span>/<span>조회 : 1325</span>/<span>댓글 1</span></div>
						</li>
					
					</ul>
				</section>
			</div>
			
			<div class="list-horizontal margin-top">
				<nav class="category">
					<h1 class="title">
						프로그래밍 언어
					</h1>
					<ul class="list">
						<li><a>자바</a></li>
						<li><a>C/C++</a></li>
						<li><a>C#</a></li>
						<li><a>Javascript</a></li>
						<li><a>기타</a></li>
					</ul>
				</nav>
				<section class="list list-answeris list-item-expand margin-left">
					<h1>
						Answer 목록
					</h1>
					<ul>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">1.&nbsp;&nbsp;입력 상자에 다음처럼 경계선이 생기는 것이 싫을 경우</a></div>							
							<div>
								
								
								에러 메시지 없음.
								
							</div>							
							<div class="text-align-center"><span>언어 : javascript:5</span>/<span>조회 : 1325</span>/<span>댓글 1</span></div>
						</li>
					
						<li class="item-answeris">
							<div class="text-ellipsis"><a href="detail.jsp">2.&nbsp;&nbsp;문제없던 톰캣 서버에서 다음과 같은 오류가 발생하면서 계속해서 시작오류가 발생한다면...</a></div>							
							<div>
								Server Tomcat v9.0 Server at localhost failed to start
								
							</div>							
							<div class="text-align-center"><span>언어 : java:8</span>/<span>조회 : 1325</span>/<span>댓글 1</span></div>
						</li>
					
					</ul>
					<div class="text-align-center">
							<div class="pager">
							<ul>
								<li class="current"><a href="">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href="">4</a></li>
								<li><a href="">5</a></li>
							</ul>
						</div>
					</div>
				</section>
			</div>
		</main>
		


<footer id="footer">
	<div class="content-container">
		<h2 id="footer-logo"><img src="../images/logo-footer.png" alt="회사정보"></h2>

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
		<!-- <footer if="footer">
			
		</footer> -->
	</div>
</body>
</html>