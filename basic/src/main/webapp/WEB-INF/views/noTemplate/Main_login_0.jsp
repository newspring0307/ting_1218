<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
 <html class="no-js">
	<head>
	
	<title>�α���</title>
	<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/simple-line-icons.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="resources/css/site.css">

    <link rel="stylesheet" type="text/css" href="resources/css/container.css">
    <link rel="stylesheet" type="text/css" href="resources/css/grid.css">
    <link rel="stylesheet" type="text/css" href="resources/css/header.css">
    <link rel="stylesheet" type="text/css" href="resources/css/input.css">
    <link rel="stylesheet" type="text/css" href="resources/css/segment.css">
    <link rel="stylesheet" href="resources/css/signin.css" >
	<script src="resources/js/modernizr-2.6.2.min.js"></script>

<!--semantic-->
  <link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
  <script src="resources/js/semantic.min.js"></script>
  <script src="resources/js/form.js"></script>
  <script src="resources/js/transition.js"></script>
<!---------------------------------function----------------------------------------------->

	</head>

	<body class="text-center">

	 <div class="form-signin">
		<form role="form" action="${pageContext.request.contextPath}/login" method="POST">
			<h1 style="color:#52d3aa;margin:0px;">ting</h1><br>
			<h2 style="color:#52d3aa;margin:0px;">�α���</h2><br><br>
			<h3>${msg}</h3>
			<div>
						<div class="form-group ">
							<label for="name" class="sr-only">ID</label>
							<input id="id" name="email" class="form-control" placeholder="ID" type="text">
						</div>
						<div class="form-group ">
							<label for="password" class="sr-only">Password</label>
							<input id="password" name="password" class="form-control" placeholder="Password" type="password">
						</div>
						<div class="form-group ">
						  <div class="checkbox">
							<label><input type="checkbox">���̵� ����</label>
						  </div>
						</div>
					</div>
			<div class="form-group ">
						<input class="btn btn-primary btn-lg btn-block" value="�α���" type="submit">
					</div>
					<p><a href="Main_login_1_PW_search" target="_blank">��й�ȣ�� �����̳���?</a></p>
					<p><a href="Main_register_0" target="_blank">������ �����Ű���? ting ȸ������</a></p><br>
</form>

 <div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#707373">OR</div><br>

		 <p><button class="ui inverted yellow button">(�ӽ�)&nbsp;īī���� �α���</button></p>
		 <p> <button class="ui inverted green button">(�ӽ�)&nbsp;&nbsp;&nbsp;���̹� �α���</button></p>
		 <p> <button class="ui inverted red button">(�ӽ�)&nbsp;&nbsp;&nbsp;���� �α���&nbsp;&nbsp;</button></p>
		 <br><br>
		 <p><a href="#" target="_blank">�̿���&nbsp;|&nbsp;</a>
			   <a href="#" target="_blank">��������ó����ħ</a></p>
	 </div>


	<!-------------------------------------------------------------------------------->
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

