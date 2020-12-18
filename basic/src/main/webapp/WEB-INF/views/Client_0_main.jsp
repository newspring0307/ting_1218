<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="margin:0 auto ;width: 1100px">
<p>여기 새로운 마이페이지 사용할 예정</p>
			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- 나의 프리미엄 -->
				<div class="infoCenter"> 
					<h1>나의 프리미엄</h1><br>
					<ul class="notifications count-3">

					<li class="primary">
					<a class="notification" href="Client_2_Ting_main" ><br><i class="fh5co-intro-icon icon-speedometer"></i>
							<span class="inner"><br><span class="count">3</span>
							<br><h2 style="color:white">오늘의 ting (매칭)</h2></span></a></li>

					<li class="primary">
					<a class="notification" href="#" ><br><i class="icon-chat"></i>
							<span class="inner"><br><span class="count">15</span>
							<br><h2 style="color:white">새로운 메시지</h2></span></a></li>

					<li class="primary">
					<a class="notification" href="Client_5_like_Received" ><br><i class="fh5co-intro-icon icon-heart"></i>
							<span class="inner"><br><span class="count">5</span>
							<br><h2 style="color:white">나의 좋아요 ♥</h2></span></a></li>

						
					</ul>
				</div>
				<!-- 나의 프리미엄 -->
<!-- 


 -->					
					
						<section class="profilePage">
							<a class="backLink" ><h1>마이페이지</h1></a><br>
							<div class="box profileHeader">
								<article class="profileInfo">
									<a class="imgWrp" target="_blank" style="background-color: #D8D8D8 " href="">
									<img src="resources/img_photo/${myDetailInfo.photo}" alt=""></a>
									<div class="intro">
									
										<h1>이름 : ${myDetailInfo.name}</h1><br>
										<h2>닉네임 : ${myDetailInfo.nickname}</h2>

										<div class="form whiteForm aboutMe">
											<h3>자기 소개</h3><br>
											<p class="">${myDetailInfo.selfIntro}</p>
											
										</div>
									</div>
								</article>
								<nav class="profileMenu">
									<a id=""  class="" href="Client_1_info_update"><i class="icon-favoriteOutline"> </i><span>프로필 수정하기</span></a>
									<a id=""  class="" href="Client_1_info_PWreset1"><i class="icon-favoriteOutline"> </i><span>비밀번호 재설정</span></a>
									<a id=""  class="" href="Client_1_tingtoday_list"><i class="icon-kiss"> </i><span>팅투데이 - 나의 작성 글</span></a>
									<a id=""  class="" href="Client_1_tingtoday_replylist"><i class="icon-kiss"> </i><span>팅투데이 - 나의 작성 댓글</span></a>

									<a id=""  class="" href="#"><i class="icon-chat"> </i><span>채팅하기</span></a>
									<a id=""  class="" href="Client_1_primium"><i class="icon-gift"> </i><span>프리미엄</span></a>
									<a id=""  class="" href="Client_1_payment_list"><i class="icon-gift"> </i><span>결제 내역</span></a>
									<a id=""  class="" href="Client_1_ask_list"><i class="icon-block"> </i><span>문의 및 신고</span></a>
								</nav>

							</div>
							<div class="box profileFacts">
								<h3>상세프로필</h3><br>
								<div class="facts">
									<div class="group">
										<span class="dt">키</span><span class="dd">
										${myDetailInfo.height}</span>
									</div>
									<div class="group">
										<span class="dt">체형</span><span class="dd">
										${myDetailInfo.bodyShape}</span>
									</div>
									<div class="group">
										<span class="dt">흡연여부</span><span class="dd">
										${myDetailInfo.smoke}</span>
									</div>
									<div class="group">
										<span class="dt">음주여부</span><span class="dd">
										${myDetailInfo.drink}</span>
									</div>
									<div class="group">
										<span class="dt">학력</span><span class="dd">
										${myDetailInfo.education}</span>
									</div>
									<div class="group">
										<span class="dt">직업</span><span class="dd">
										${myDetailInfo.job}</span>
									</div>
									<div class="group">
										<span class="dt">종교</span><span class="dd">
										${myDetailInfo.religion}</span>
									</div>
									

								</div>
							</div>
						</section>
					</section>
				</div>
			</div>
	</div>
	