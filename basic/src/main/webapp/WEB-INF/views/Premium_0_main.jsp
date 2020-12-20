<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!----------------------------------content start---------------------------------->
<%-- <c:forEach items="${memberList}" var="member"> --%>

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
			<!--  이슈 : 폼은 따로 전달 해야 한다., 자바스크립/jQuery 는 id가 중복되어서는 동작이 안되기 때문에 ...
				  class로 바꿔서 핸들링 했다.
			 -->
			<c:forEach items="${GoodsList}" var="goods">	
				<form class="pay" method="post">			
						<div class="col-md-4">
							<div class="fh5co-person text-center to-animate">
								<figure><img src="resources/images/week.png" alt="Image"></figure>
								<input type="hidden" value="${sessionScope.clientIdx}" name="clientIdx">
								<input type="hidden" value="${goods.goodIdx}" name="goodIdx">								
								<input type="hidden" value="resources/images/img_7.jpg" name="poto">
								
								<input type="hidden" name="heartcnt" value="♥${ goods.heartcnt}개">								
								<img src="resources/images/img_7.jpg" width="100px;" height="100px;">
								<hr>
								<p>하루 ting ${goods.goodName }</p>
								<p><h3>♥${ goods.heartcnt}개</h3></p>
								<input class="btn btn-primary btn-lg"  type="submit"  name="Price" value="${goods.price }">
								<!-- 나중에 변수로 넣을 것 -->
							</div>
						</div>		
				</form>						
			</c:forEach>	
			
			</div>
		</div>
	</section>

			


	



<!----------------------------------content end---------------------------------->
<!---------------------------------- Footer start ---------------------------------->

	<script language="javascript">
	
		
	 $(document).ready(function() {
		 //# = id  . = class 
		 //id = 중복안됨  class = 중복 가능
		 // for each 문으로 반복할때 값이 중복 되면 첫번째 값만 출력된다.
		 // class 는 중복이 가능하기때문에 DB에 있는 값이 차례대로  들어가게 된다.
		$('.pay').submit(function() {
		window.open('', 'payviewer', 'width=600,height=800,left=650,top=100,resizeable,scrollbars');
		this.action = 'Premium_1_payment';
		this.method = 'POST';
		this.target = 'payviewer';
		});
		    
	});
		</script>


