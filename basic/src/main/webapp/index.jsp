<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
 <html class="no-js">
	<head>

		<title>ting</title>
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="resources/css/animate.css">
			<link rel="stylesheet" href="resources/css/simple-line-icons.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/style.css">
			<link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">
			<script src="resources/js/modernizr-2.6.2.min.js"></script>
			<script
			  src="https://code.jquery.com/jquery-3.1.1.min.js"
			  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			  crossorigin="anonymous"></script>
			<script src="resources/js/semantic.min.js"></script>
			<!-- 커밋 테스트 -->
			<!-- 커밋 테스트 -->
	</head>
	<body>
	<header role="banner" id="fh5co-header" >
			<div class="container">
			    <nav class="navbar navbar-default">
		        <div class="navbar-header">
				<a href="index.jsp" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		         <a class="navbar-brand" href="index.jsp">ting</a> 
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="index.jsp"
							data-nav-section="about"><span>팅이란?</span></a></li>
						<li><a href="Main_company_1_team" data-nav-section="team"><span>team</span></a></li>
						<li><a href="Tingtoday_0_main" data-nav-section="tingtoday"><span>팅투하자!</span></a></li>
						<li><a href="Premium_0_main" data-nav-section="premium"><span>프리미엄</span></a></li>
						<li><a href="Fun_0_main" data-nav-section="fun"><span>FUN</span></a></li>
						<li><a href="Client_2_Ting_main" data-nav-section="contact"><span>문의</span></a></li>
						<c:if test="${sessionScope.UID eq null}">
							<li><button class="ui inverted teal button" id="login">로그인</button></li>
							<li><button class="ui inverted teal button" id="register">회원가입</button></li>
						</c:if>
						<c:if test="${sessionScope.UID ne null}">
							<li><button class="ui inverted teal button" id="logout">로그아웃</button></li>
						</c:if>
					</ul>
				</div>
			    </nav>
		  </div>
	</header>

	<section id="fh5co-home" data-section="about" style="background-image: url(resources/images/mainimg.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2" >
							<h1 class="to-animate"  >매일 이상형이 찾아오다</h1>
							<h2 class="to-animate">ting</h2><br>
							<a href="Client_2_Ting_main" class="btn btn-primary"><h2 style="color:gray">팅하러가기</h2></a>
							<a href="Client_5_like_Received" class="btn btn-primary"><h2 style="color:gray">마이페이지</h2></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>
	<section id="fh5co-intro">
		<div class="container">
			<div class="row row-bottom-padded-lg">
				<div class="fh5co-block to-animate" style="background-image: url(resources/images/ting.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-speedometer"></i>
						<h2>매일 오전 10시!</h2>
						<p>내 이상형이 매일 추천된다면?<p>내 이상형에 맞게<p> 랜덤으로 찾아와요!</p>
						<p><a href="Main_login_0" class="btn btn-primary">ting 하러가기</a></p>
						<!-- 나중에 로그인 여부에 따라 바꿀 것임 -->
					</div>
				</div>

				<div class="fh5co-block to-animate" style="background-image: url(resources/images/ting.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-shield"></i>
						<h2>소중한 내정보!</h2>
						<p>ting은 팅피플의 소중한 개인정보를<p>아무에게나함부로 보여주지 않아요!<p>내가 선택한 사람에게만 보여줘요!</p>
						<p><a href="Main_login_0" class="btn btn-primary">ting 하러가기</a></p>
					</div>
				</div>


				<div class="fh5co-block to-animate" style="background-image: url(resources/images/ting.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-heart"></i>
						<h2>ting만 믿어요</h2>
						<!-- <p>용기가 없어요.<p>불필요한 감정 소모 싫어요.<p>모든 건 ting이 할테니<p>선택만 해요! </p> -->
						<p>ting은 최적의 이상형 알고리즘을 통해 당신에게 가장 적합한 이성을 매칭해드립니다. <p>ting에게 맡기고 운명의 그사람과 마주하세요.이제 행복해질 시간이에요.</p>
						<p><a href="Main_login_0 " class="btn btn-primary">ting 하러가기</a></p>
					</div>
				</div>

			</div>
		</div>
	</section>

	<section id="fh5co-counters" style="background-image: url(images/main_back.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center to-animate">
					<h2>ting now</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="7" data-speed="5000" data-refresh-interval="50">7</span><br><br>
						<span class="fh5co-counter-label">팀원</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
					<span class="fh5co-counter-number js-counter" data-from="0" data-to="16055" data-speed="5000" data-refresh-interval="50">16055</span><br><br>
						<span class="fh5co-counter-label">가입자</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="1302" data-speed="5000" data-refresh-interval="50">1302</span><br><br>
						<span class="fh5co-counter-label">매칭성사</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="15001" data-speed="5000" data-refresh-interval="50">15001</span><br><br>
						<span class="fh5co-counter-label">프리미엄회원</span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="fh5co-work" data-section="team">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate"> 소개합니다! </h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>ting ! 우리팀입니다.</h3>
						</div>
					</div>
				</div>
			</div>

			<div class="row row-bottom-padded-sm">

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy2.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy2.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy4.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy4.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>
				
<!-- 				<div class="clearfix visible-sm-block"></div> -->

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy2.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy2.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>
				
				<!-- <div class="clearfix visible-sm-block"></div> -->

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy4.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy4.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>ting </h2>
						<span>이름</span>
						</div>
					</a>
				</div>

			<div class="row">
				<div class="col-md-12 text-center to-animate">
					<p><a href="Main_company_1_team " target="_blank"><h2>더 자세히 알고싶으시다면 !<h2></a></p>
				</div>
			</div>
		</div>
	</section>

	<section id="fh5co-testimonials" data-section="tingtoday">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">팅투하자 !</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h2 style="color:#026191">ting TODAY!<p>ting에서 즐거운 하루를 공유하세요!</h2>
							<!-- <input class="btn btn-primary btn-lg" value="지금 바로 팅투!" type="button" > -->
							<button class="ui teal button" id="go_tingtoday">지금 바로 팅투!</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2" style="background:">
							<p>&ldquo;연테 결과 같이 공유해요~!&rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy3.jpg" alt="Person"></figure>
							<p>
							yeeun  <span class="subtext">ENTP</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2">
							<p>&ldquo; 제 21년 새해 계획이네요~! &rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy.jpg" alt="Person"></figure>
							<p>
							JENNY <span class="subtext">ESTP</span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2">
							<p>&ldquo; 어떤가요? &rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy2.jpg" alt="Person"></figure>
							<p>
							hoony  <span class="subtext">INFJ</span>
							</p>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</section>



	
	<!-- <section id="fh5co-about" data-section="premium"> -->
	<section id="fh5co-work" data-section="premium">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Premium</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h1>기본 프리미엄 혜택 : ting card <span style="color:blue;">DOUBLE!</span></h1>
							<p><h3><a href="Premium_0_main ">구매하러가기</a></h3></p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/week.png" alt="Image"></figure>
						<h2>7 일</h2>
						<p>하루 ting Card: 6개</p>
						<p>+ 플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="7,000 원" type="button" id="go_premium">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/month.png" alt="Image"></figure>
						<h2>30 일</h2>
						<p>하루 ting Card: 6개</p>
						<p>+ 플러스플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="할인가 2,5000 원" type="button" id="go_premium">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/year.png" alt="Image"></figure>
						<h2>365 일</h2>
						<p>하루 ting Card: 6개</p>
						<p>+ 왕플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="이벤트특가! 99,000원" type="button" id="go_premium">
					</div>
				</div>
			</div>
		</div>
	</section>

		<section id="fh5co-services" data-section="fun">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-left" style="margin:0">
					<h2 class=" left-border to-animate">FUN</h2>
					<div class="row">
						<div class="col-md-8 subtext to-animate" >
							<h3>ting만의 컨텐츠! </h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			<ul style="list-style:none;">
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate" >
					<!-- <i class="icon to-animate-2 icon-anchor"></i> -->
					<h3>나의 MBTI</h3>
					<p>나의 성격유형 입력하고 광명찾자!</p>
					<button class="ui teal button goFun" id="goFUN">go FUN >></button>
					<p><br><br></p>
				</div>
			</li>
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<!-- <i class="icon to-animate-2 icon-layers2"></i> -->
					<h3>다른 사람 성격도 궁금하다면! </h3>
					<p>이젠 성격유형 중요하다구요 ~ 나랑 맞는 사람 찾아보기</p>
					<button class="ui teal button goFun" id="goFUN">go FUN >></button>
					<p><br><br></p>
				</div>
			</li>
			<br><br>

				<!-- <div class="clearfix visible-sm-block"></div> -->
		
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<!-- <i class="icon to-animate-2 icon-video2"></i> -->
					<h3>연애 심리테스트</h3>
					<p>내 연애 타입 알아보기! 타입별로 추천받을 수도 있어요!</p>
					<button class="ui teal button goFun" id="goFUN">go FUN >></button>
					<p><br></p>
				</div>
			</li>
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<!-- <i class="icon to-animate-2 icon-monitor"></i> -->
					<h3>이상형 테스트</h3>
					<p>이상형테스트하면 진짜로 이상형이 추천된다니까요 !</p>
					<button class="ui teal button goFun" id="goFun">go FUN >></button>
					<p><br></p>
				</div>
			</li>
			</ul>
				
			</div>
		</div>
	</section>

		<section id="fh5co-counters" style="background-image: url(images/main_back.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
		</section>
	


	<section id="fh5co-contact" data-section="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">궁금하신 부분이 있나요?</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>언제나 ting은 열려있습니다!</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-bottom-padded-md">
				<div class="col-md-6 to-animate">
					<h3>ting Info</h3>
					<ul class="fh5co-contact-info">
						<li class="fh5co-contact-address " >
							<i class="icon-home" ></i>
							부천시 소사구 심곡본동
						</li>
						<li><i class="icon-phone"></i> (123) 456-789</li>
						<li><i class="icon-envelope"></i>ting_manager@gmail.com</li>
						<li><i class="icon-globe"></i> <a href="#">ting.co</a></li>
					</ul>
				</div>
				
				
				<form action="qna_add"  method="post">
				<%-- 이자리는 로그인 한 후 회원의 아이값을 기준으로 문의 게시판을 작성
					value=22 값은 변수로 변경 가능 
					이름, 이메을 , 헨드폰도 모두 자동으로 불러 올영역 
				 --%>
				<input type="hidden" name="boardTypeIdx" value="0">					
				<div class="col-md-6 to-animate">
					<h3>문의2</h3>
					<div class="form-group ">
						<label for="email" class="sr-only">제목</label> 
						<input id="title" class="form-control" placeholder="제목" type="text" name="title">
					</div>
					<div class="form-group ">
						<label for="message" class="sr-only">내용</label>
						<textarea name="content" id="content" cols="30" rows="5" class="form-control" placeholder="내용"></textarea>
					</div>
					<div class="form-group ">
						<input class="btn btn-primary btn-lg" value="문의 보내기" type="submit">
					</div>
				</div>
				</form>
		</div>
			</section>
	<footer id="footer" role="contentinfo">
		<a href="#" class="gotop js-gotop">To<i class="icon-arrow-up2">Top</i></a>
		<br><br>
		<div class="container">
			<div class="">
				<div class="col-md-12 text-center">
					<p>&copy; ting </p>
				</div>
			</div>
			<br><br>
		</div>
	</footer>
	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="resources/js/google_map.js"></script>
	<script src="resources/js/main.js"></script>
	</body>
</html>

