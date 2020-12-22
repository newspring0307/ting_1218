<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
 <html class="no-js">
	<head>

		<title>�����̾�	</title>

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


	<body>

	<!---------------------------------- header start ---------------------------------->
	<header style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" style="color:#1C1185">ting</a> 
		       </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
                  <li class="active"><a href="index.jsp"
                     data-nav-section="about"><span>���̶�?</span></a></li>
                  <li><a href="Main_company_1_team" data-nav-section="team"><span>team</span></a></li>
                  <li><a href="Tingtoday_0_main" data-nav-section="tingtoday"><span>��������!</span></a></li>
                  <li><a href="Premium_0_main" data-nav-section="premium"><span>�����̾�</span></a></li>
                  <li><a href="Fun_0_main" data-nav-section="fun"><span>FUN</span></a></li>
                  <li><a href="Client_2_Ting_main" data-nav-section="contact"><span>����</span></a></li>
                  <c:if test="${sessionScope.UID eq null}">
                     <li><button class="ui inverted teal button" id="login">�α���</button></li>
                     <li><button class="ui inverted teal button" id="register">ȸ������</button></li>
                  </c:if>
                  <c:if test="${sessionScope.UID ne null}">
                     <li><button class="ui inverted teal button" id="logout">�α׾ƿ�</button></li>
                  </c:if>
               </ul>
		        </div>
		    </div>
	</header>

<!---------------------------------- header end ---------------------------------->

<!----------------------------------content start---------------------------------->
<br><br>
<!--�Խ��� �ش�-->
	<header>
	<h1 align="center">���� ����</h1>
	</header>
<!--�Խ��� �ش�-->
<br><br>
	<div class="container">	
		<div class="row">	
			<table class="payment" style="text-align: center; border: 1px solid #dddddd">	
						<thead>
						<tr>	
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">��������</th>					
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">���Ż�ǰ</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">��ǰ����</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">�������</th>									
						</tr>
						</thead>
				<c:forEach items="${PaymentList}" var="payment">		
						<tr>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.when }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.goods.goodName }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.goods.price }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.method }</h2></td>						
						</tr>	
				</c:forEach>								
			</table>		
		</div>			
	</div>

<hr>
<br><br>
<!----------------------------------content end---------------------------------->
<!---------------------------------- Footer start ---------------------------------->

   <div class="ui inverted vertical footer segment" style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
    <div class="ui container">
      <div class="ui stackable inverted divided equal height stackable grid">
        <div class="three wide column">
          <h4 class="ui inverted header">company</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">ting Team</a>
            <a href="#" class="item">ting�̶�?</a>
            <a href="#" class="item">premium</a>
            <a href="#" class="item">�����ϱ�</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Services</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">ting Today</a>
            <a href="#" class="item">MBTI</a>
            <a href="#" class="item">�����׽�Ʈ</a>
            <a href="#" class="item">�̻����׽�Ʈ</a>
          </div>
        </div>
        <div class="seven wide column">
          <h4 class="ui inverted header">ting Info</h4>
          <ul class="fh5co-contact-info">
						<li class="fh5co-contact-address " >
						<i class="icon-home" ></i>&nbsp;��õ�� �һ籸 �ɰ��</li>
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