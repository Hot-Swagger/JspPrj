<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>	
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="item-vertical item-center bg-gray">
	



	<header id="header">
		<div class="content-box content-container">
						
			<h1 id="logo">
				<a href="../index.jsp"> 
					<img src="../images/logo.png" alt="뉴렉처 온라인" />
					
				</a>
			</h1>
		
			<nav id="main-menu">
				<h1>메인메뉴</h1>
				<ul>
					<li><a href="../guide">학습가이드</a></li>
					
					<li><a href="../course">강좌선택</a></li>
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
					<li><a href="../student/index.jsp">
						<img src="../images/txt-mypage.png" alt="마이페이지" /></a></li>
					<li><a href="/customer/notice"><img
							src="../images/txt-customer.png" alt="고객센터" /></a></li>
				</ul>
			</nav>
				
			
		</div>
	</header>
	<div class="content-box">
		<main id="main" class="main margin-top">			
			
			<div class="top-bar">
				<img src="images/write-green.png" style="height: 50px; margin-right: 20px;" />
				<a href="../student/community/answeris/list.jsp">기록하는 습관 : 우리가 틈틈히 기록한 모든 내용이 나에게도 도움이 되지만 다른 사람들에게는 꼭 필요한 "Answer"가 될 수 있습니다.</a>
			</div>
			
							
			<div class="list-horizontal margin-top">
				
				<article class="list list-answeris list-item-expand detail-answeris">
					<h1>
						제목 : 입력 상자에 다음처럼 경계선이 생기는 것이 싫을 경우
					</h1>
					<dl>
						<dt>
							오류 상황
						</dt>
						<dd>
							input 이나 textarea 태그를 이용해서 사용자가 입력할 수 있는 상자를 제공할 때 focus를 얻는 상자는 다음처럼 경계선이 생긴다.<div><br></div><div style="text-align: center;"><img src="student/newlec/2018/2/image195915png" style="max-width: 90%; max-height: 90%; border-width: 1px; border-style: solid; border-color: rgb(89, 89, 89);"><br></div><div><br></div><div>위의 그림에서 제목을 입력하는 상자에 테두리가 생긴것을 볼 수 있다.</div><div><br></div><div>이것을 없애는 방법은 없을까?</div>
						</dd>
						<dt>
							시도해본 내용
						</dt>
						<dd>
							스타일을 이용해서 border 를 다음처럼 0px로 주어보았다.<div><br></div><div>input{</div><div>   border : 0px</div><div>}</div><div><br></div><div>하지만 해결이 되지 않았다.</div>
						</dd>
						<dt>
							알아낸 오류 원인
						</dt>
						<dd>
							 입력 상자의 외곽에 경계선이 생기는 것이 아니고 활성화된 상자에서 생기는 경계선은 border가 아니라 outline 으로 설정해야 함.
						</dd>					
						<dt>
							해결 방법
						</dt>
						<dd>
							 input{<div>    outline: none;<br><div>}</div></div><div><br></div><div>위와 같이 outline 속성을 이용해서 해결할 수 있다.</div>
						</dd>
					</dl>					
					<div class="text-align-center margin-top" style="position:relative;border-bottom: 1px solid #e9e9e9;padding-bottom:20px;">
						<span class="btn-text btn-comment">댓글(<span class="color-notice">123</span>)</span>
						<a style="position: absolute; right: 10px;" class="btn-text btn-list" href="list.jsp">목록</a>
					</div>
					
					<!-- ---- 댓글 -------------------------------------------------------------------------------------------------------- -->
					
					<div class="form-comment margin-top hidden">
						<form action="../comment/2/reg">
						<div>
							<div>
								<textarea rows="5" cols="80" name="content"></textarea>
							</div>
							<div>
								<input class="btn-text btn-default" type="button" value="등록" />
								<span>1/1000</span>
							</div>
						</div>
						</form>
						<section class="list-comment margin-top">
							<h1 class="hidden">댓글 목록</h1>
							<ul>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
								<li class="item-comment">
									<div>
										<span style="background-image: url('..student/test03/20171008_083951.jpg');"></span>
									</div>
									<div>
										<div><span>newlec</span><span>2018-02-11 23:33</span><span>신고</span></div>
										<div>인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번
										호 문제
										는 이런거 말고 그냥 은행에가서 직접 그 
										핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문
										
										제는 이런거 말고 그냥 은
										행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ
										인증번호 문제는 이런거 말고 그냥 은행에가서 직접 그 핸드폰으로 해서 신청하면 되요ㅋㅋㅋ</div>
									</div>
								</li>
							
							</ul>
						</section>
					</div>
					<script type="text/javascript">
					window.addEventListener("load", function(event) {
						var textarea = document.querySelector(".form-comment>form>div:first-child>div:first-child>textarea");
						var charCountSpan = document.querySelector(".form-comment>form>div:first-child>div:last-child>span");
						var commentButton = document.querySelector(".btn-comment");
						var commentForm = document.querySelector(".form-comment");
						
						textarea.oninput = function(e){
							var length = textarea.value.length;							
							charCountSpan.textContent = length+"/1000";
							
							if(length >= 1000)
								textarea.value = textarea.value.substr(0,999);
						}
						
						commentButton.onclick = function(e){
							if(commentForm.classList.contains("hidden"))
								commentForm.classList.remove("hidden");
							else
								commentForm.classList.add("hidden");
						};
						
					});
					</script>
					
					<div class="text-align-center margin-top">
						<input class="btn-text btn-clip" type="button" value="담기">
						<input class="btn-text btn-like" type="button" value="좋아요">						
					</div>
					
					<section style="border:1px solid #a9a9a9;" class="list-other-answer margin-top padding-bottom">
						<h1 style="font-size: 16px; font-weight: bold; text-align: center; color: #000; padding:20px 0px;">동일 분류의 다른 Answer</h1>
						<table>
							<thead>
								<tr>
									<td>제목</td>
									<td>오류코드</td>
									<td>언어</td>
									<td>플랫폼</td>
								</tr>
							</thead>
							<tbody>
							
								<tr>
									<td>동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록</td>
									<td>402</td>
									<td>java</td>
									<td>jsp</td>
								</tr>
							
								<tr>
									<td>동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록</td>
									<td>402</td>
									<td>java</td>
									<td>jsp</td>
								</tr>
							
								<tr>
									<td>동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록</td>
									<td>402</td>
									<td>java</td>
									<td>jsp</td>
								</tr>
							
								<tr>
									<td>동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록동해물과 백두산이 마르고 닳토록</td>
									<td>402</td>
									<td>java</td>
									<td>jsp</td>
								</tr>
							
							</tbody>
						</table>
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
				</article>
				
				<aside class="category margin-left">
					<h1 class="hidden">분류</h1>
					<nav>
						<h1 class="title text-align-center">
							현재글의 분류
						</h1>
						<ul class="list">
							<li>언어 : <span>java</span></li>
							<li>플랫폼 : <span>java</span>, <span>jsp</span></li>
							<li>실행환경 : <span>tomcat</span></li>
							<li>오류코드 : <span>404</span></li>
							<li>오류메시지 : <span>404 페이지를 찾을 수 없습니다.</span></li>
						</ul>
					</nav>
					
				</aside>
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
	
	</div>
</body>
</html>



