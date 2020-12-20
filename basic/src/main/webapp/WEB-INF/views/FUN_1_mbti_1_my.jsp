<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>기본폼	</title>

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
		  src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="resources/js/semantic.min.js"></script>
		
  <link rel="stylesheet" href="resources/css2/reset.css">
  <link rel="stylesheet" href="resources/css2/animation.css">
  <link rel="stylesheet" href="resources/css2/main.css">
  <link rel="stylesheet" href="resources/css2/welcome.css">
  <link rel="stylesheet" href="resources/css2/qna.css">
  <link rel="stylesheet" href="resources/css2/calc.css">
  <link rel="stylesheet" href="resources/css2/result.css">

</head>
<body>

	<!---------------------------------- header start ---------------------------------->
	<header style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" style="color:#1C1185">ting</a> 
		       </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="index.jsp" data-nav-section="about"><span>팅이란?</span></a></li>
		            <li><a href="Main_company_1_team.do" data-nav-section="team"><span>team</span></a></li>
		            <li><a href="Tingtoday_0_main.do" data-nav-section="tingtoday"><span>팅투하자!</span></a></li>
		            <li><a href="Premium_0_main.do" data-nav-section="premium"><span>프리미엄</span></a></li>
		            <li><a href="Fun_0_main.do" data-nav-section="fun"><span>FUN</span></a></li>
		            <li><a href="Client_2_Ting_main.do" data-nav-section="contact"><span>문의</span></a></li>
					<li><button class="ui inverted teal button" id="login">로그인</button></li>
					<li><button class="ui inverted teal button" id="register">회원가입</button></li>
			      </ul>
		        </div>
		    </div>
	</header>
	<!---------------------------------- header end ---------------------------------->
	
  <div id="wrap">
    <section id="welcome" class="container1">
      <div id="title-box">
        <h1 class="title">
          20 Things<br>
          I Know About You
        </h1>
        <h3 class="sec-tit">
          20가지 질문으로 알아보는<br>
          내가 연인에게 원하는 것<br>
          + Disney Character
        </h3>
        <span class="time-logo"></span>
        <div>소요 시간 : 3분 내외</div>
      </div>
      <hr class="w-line">
      <p class="w-line">
        <span id="p-tit">이 테스트로 당신은...</span><br>
        연인에게 바라는 것을 알 수 있습니다.<br>
        현대인에게 자신의 장단점을 제대로 알고 이미지를 관리하는 것은
        성공적인 사회 생활과 좋은 평판을 얻기 위해 필수적입니다.
        테스트 결과로 연인에게 바라는 것은 무엇인지, 나와 닮은 디즈니 캐릭터는 누구인지 알아보세요!
      </p>
      <hr class="w-line">
      <div id="name-input">
        <input type="text" placeholder="이름" autofocus>
      </div>
      <p class="check-name warning"></p>
      <div class="start-wrap">
        <button class="start">시 작</button>
      </div>
    </section>
    <section id="qna" class="container1">
      <div class="status-bar">
        <div class="status"></div>
      </div>
      <div class="q box"></div>
      <div class="answer"></div>
    </section>
    <section id="calc">
      <div class="calc-bar">
        CALCULATING
        <div class="calc"></div>
      </div>
      <p class="wait">잠시 기다려주세요...</p>
    </section>
    <section id="result" class="container1">
      <div id="score-box">
        <div class="p title"></div>
        <div class="point"></div>
        <div class="pin"></div>
        <div class="score-bar"></div>
      </div>
      <div id="desc-box">
        <div class="art"></div>
        <div class="result title"></div>
        <div class="res desc"></div>
       
      </div>
      <hr>
   

      <hr>
      <div class="caution"> 
        <p>
          사람은 서로 조금씩 달라서 16가지 이미지에 꼭 맞기는 어렵습니다.
          결과가 조금 맞지 않더라도 이런 면이 있음을 알고 자신의 매력을 어필해보세요.
          좋은 인연은 어느새 당신의 옆에 있을 겁니다!<br><br>
        </p>
      </div>
      <hr>
 
      <hr>
  
    </section>
  
  </div>
  <script language="JavaScript" src="resources/js2/data.js" charset="UTF-8"></script>
  <script language="JavaScript" src="resources/js2/main.js" charset="UTF-8"></script>
  
  
	<!---------------------------------- Footer start ---------------------------------->

   <div class="ui inverted vertical footer segment" style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
    <div class="ui container">
      <div class="ui stackable inverted divided equal height stackable grid">
        <div class="three wide column">
          <h4 class="ui inverted header">company</h4>
          <div class="ui inverted link list">
          	<a href="Main_company_1_team.do" class="item">ting Team</a>
            <a href="index.jsp" class="item">ting이란?</a>
            <a href="Premium_0_main.do" class="item">premium</a>
            <a href="Client_2_Ting_main.do" class="item">문의하기</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Services</h4>
          <div class="ui inverted link list">
          	<a href="Tingtoday_0_main.do" class="item">ting Today</a>
            <a href="FUN_1_mbti_1_my.do" class="item">MBTI</a>
            <a href="FUN_2_test1.do" class="item">연애테스트</a>
            <a href="FUN_2_test2.do" class="item">이상형테스트</a>
          </div>
        </div>

        <div class="seven wide column">
          <h4 class="ui inverted header">ting Info</h4>
          <ul class="fh5co-contact-info">
						<li class="fh5co-contact-address " >
						<i class="icon-home" ></i>&nbsp;부천시 소사구 심곡본동</li>
						<li><i class="icon-phone"></i>&nbsp;(123) 456-789</li>
						<li><i class="icon-envelope"></i>&nbsp;ting_manager@gmail.com</li>
			</ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!---------------------------------- Footer end ---------------------------------->


	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>

	<script src="resources/js/main.js"></script>

	</body>
</html>

  
</body>
</html>