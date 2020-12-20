<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
 <html class="no-js">
	<head>

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
			  src="https://code.jquery.com/jquery-3.1.1.min.js"
			  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			  crossorigin="anonymous"></script>
			<script src="resources/js/semantic.min.js"></script>

	</head>


	<body class="text-center">

	<!---------------------------------- header start ---------------------------------->
	<header style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index" style="color:#1C1185">ting</a> 
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
		    </div>
	</header>
<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->

<div class="form-signin" style="margin:0 auto; width:400px">
<div class = "ui container" style="margin:50px 0px 50px 0px">
 <form class="ui large form" action="reset_pwd" method="post">
      <div class="ui stacked segment">
      
      <h1 style="color:#52d3aa;margin:0px;">ting</h1><br>
      
		<h2 style="color:#52d3aa;margin:0px;">비밀번호 재설정</h2>
		
		<h3 style="color:#000000;">안전한 비밀번호를 만들어주세요. </h3>
		
      
      
       
		 <div class="field">
            <input type="password" name="password" placeholder="새 비밀번호">
            <input type="hidden" name="email" value=${email }>
        </div>   
	   <div class="field">
            <input type="password" name="password_check" placeholder="새 비밀번호 확인">
       </div>
       <div>
	  <ul>
	  <li style="list-style:none;" align="right">영문, 숫자, 특수문자 필수 조합</li>
	  <li style="list-style:none;" align="right">8~14 자리 비밀번호</li>
	  </ul>
    </div>
        <div class="field" style="padding-top: 15px">
           <input type="submit" class="ui fluid large teal submit button" value="변경">
	        
      </div>
	</div>

      <div class="ui error message"></div>

    </form>


</div>
</div>
	
 
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

<!---------------------------------- Footer start ---------------------------------->

   <div class="ui inverted vertical footer segment" style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
    <div class="ui container">
      <div class="ui stackable inverted divided equal height stackable grid">
        <div class="three wide column">
          <h4 class="ui inverted header">company</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">ting Team</a>
            <a href="#" class="item">ting이란?</a>
            <a href="#" class="item">premium</a>
            <a href="#" class="item">문의하기</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Services</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">ting Today</a>
            <a href="#" class="item">MBTI</a>
            <a href="#" class="item">연애테스트</a>
            <a href="#" class="item">이상형테스트</a>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="resources/js/google_map.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>

