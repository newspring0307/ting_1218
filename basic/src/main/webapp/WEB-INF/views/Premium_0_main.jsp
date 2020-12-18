<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Premium</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h1>기본 프리미엄 혜택 : ting card <span style="color:blue;">DOUBLE!</span></h1>
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
						<input class="btn btn-primary btn-lg" value="7,000 원" type="button"  onclick="showPopup()">
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/month.png" alt="Image"></figure>
						<h2>30 일</h2>
						<p>하루 ting Card: 6개</p>
						<p>+ 플러스플러스 혜택</p>
						<input class="btn btn-primary btn-lg" value="할인가 2,5000 원" type="button"  id="pay_25000" onclick="showPopup()">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/year.png" alt="Image"></figure>
						<h2>365 일</h2>
						<p>하루 ting Card: 6개</p>
						<p>+ 왕플러스 혜택</p>
						<input class="btn btn-primary btn-lg" value="이벤트특가! 99,000원" type="button"  id="pay_99000" onclick="showPopup()">
					</div>
				</div>
			</div>
		</div>
	</section>
