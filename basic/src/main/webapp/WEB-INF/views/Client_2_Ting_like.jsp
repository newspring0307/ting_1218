<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!--여기에 내용 넣으세요-->
<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">♡♥이상형 지수♥♡</h2>
					<h4>남은 하트 수:${heartCnt}</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${myClientDetailInfo.name},${myClientDetailInfo.age}</h2>				
								<span>${myClientDetailInfo.selfIntro}</span>
						</div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="text-center to-animate">
					<div class="cnt">	
						<h2>당신의 취향에 80% 부합해요!</h2>	
						<h3 style="color:gray; ">( 90%이상이면 운명의 상대라는 소문이..?!)</h3>	
						<h4 style="color:#ff5675">강아지상</h4>	
						<h4 style="color:#ff5675">근육질</h4>	
						<h4 style="color:#ff5675">대졸자</h4>	
						<h4 style="color:#ff5675">가끔 마심</h4>	
						<h4 style="color:#ff5675">비흡연자</h4>	
						<h4 style="color:#ff5675">예의바름</h4>	
				<form method="POST" action="insertLikeReceive">		
						<input type="hidden" name="sendIdx" value="${clientDetailInfo.clientIdx}"/>
			<input class="btn btn-lg likesend" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646"value="좋아요 보내기" type="submit">
				</form>
					</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${clientDetailInfo.name},${clientDetailInfo.age}</h2>				
								<span>${clientDetailInfo.selfIntro}</span>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	
<script type="text/javascript">
	$(function(){
		if(${heartCnt}<=0){
			$(".likesend").click(function(){
				alert("하트가 부족해요ㅜㅜ ");
				$(".likesend").prop("disabled", true);
			})
		}
	});

	
</script>
