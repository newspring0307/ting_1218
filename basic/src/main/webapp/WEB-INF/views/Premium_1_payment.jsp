<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->
<br><br>
<!--결제 header-->
			<header>
			<h1 align="center">결제진행</h1>
			</header>
<!--결제 header-->
<br><br>
<!-- 테이블 -->
	<div style="padding-left: 5%;">
		<form action="kakao.do">
			<table class="w3-table-all notranslate">											
				<thead>
					<tr>
					  <th style="border: 2px solid #52D3AA;width: 120px; height: 100px;"><h3 align="center">결제수단</h3></th>
					  <th style="border: 2px solid #52D3AA;width: 400px;padding:10px;"><h4 align="center">KakaoPay</h4></th>			                  
					</tr>
				</thead>
				<tbody> 
					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">구매인</h5></td>
						<td style="border: 2px solid #52D3AA;width: 400px;padding:10px;"><h2 align="center">
						<p><span name="name" value="fnzl">사용자 ID</span></p></h2>
																																							                  
						</td>						
					</tr>
					
					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">전화번호</h5></td>
						<td style="border: 2px solid #52D3AA;">
							<div class="ui input focus" style="padding-left: 10%;">
								<p><input type="text" name="phone" style="width: 320px;height: 55px;text-align:center" placeholder="-없이 입력하세요"></p>																
							</div>					                  
						</td>						
					</tr>	
									                
					 <tr>
					    <td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">이메일</h5></td>
					    <td style="border: 2px solid #52D3AA;">
						    <div class="ui input focus" style="padding-left: 10%; ">
								<p><input name="email" style="width: 320px;height: 55px;text-align:center" placeholder="-없이 입력하세요"></p>
								
							</div>					                  
						</td>				                  																																		                  	                 			                  
					</tr>
				<tr>
				<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">선택한 상품</h5></td>
				<td style="border: 2px solid #52D3AA;">
							<div class="ui form" style="padding-left: 25%;padding-top:20%;">				     
							 <div class="inline fields" align="center">  
								
									<div class="ui radio checkbox" align="center">
										<img src="resources/images/img_7.jpg" width="100px;" height="100px;"><hr>									
										<span><h4>Premium1</h4></span><br>
										<input name="totalPrice" value="99000" style="text-align:center">
									</div>
								</div>																			
							</div>
						</td>
					</tr>	                					                 			                				               				                
				</tbody>    					          		                				             
			</table>	
			<hr>
		<!-- 이용약관동의 -->
		<div class="form-control" align="center" style="width: 520px; height : 150px;padding:30px;">위의 입력한 정보가 맞으며 <br>개인정보 이용에 동의합니다.<br>
			<input type="checkbox" onclick="alert('이용약관에 동의하셧습니다.');">
		</div><br> <br>
		<!-- 이용약관동의 -->	
		
		<!-- 결제 버튼 -->	         						       
		<div style="padding-left: 25%;">
			<input class="btn btn-primary btn-lg" type="submit" value="결제 완료" />
			<!-- <button id="check_module" type="button">아임 서포트</button> -->
			<input class="btn btn-primary btn-lg" type="button" value="결제 취소" onclick="moveCloseOff();" />				      				            
		</div>	
		<!-- 결제 버튼 -->	
		</form>		      
	</div>


        
	      
	      
	      
	            
<br><br>


	
	
	<script language="javascript">
	function moveCloseOff() {		
	  opener.location.href="Premium_0_main.do";		  
	  	close()  	  
	}				
	function go_result() { opener.location.href="Premium_2_payresult_Test";
		
		close()
	}	
	  </script>
	  
	  
	  
	<script>
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp63155918');
		// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		IMP.request_pay({
		pg: 'inicis', // version 1.1.0부터 지원.
		/*
		'kakao':카카오페이,
		html5_inicis':이니시스(웹표준결제)
		'nice':나이스페이
		'jtnet':제이티넷
		'uplus':LG유플러스
		'danal':다날
		'payco':페이코
		'syrup':시럽페이
		'paypal':페이팔
		*/
		pay_method: 'card',
		/*
		'samsung':삼성페이,
		'card':신용카드,
		'trans':실시간계좌이체,
		'vbank':가상계좌,
		'phone':휴대폰소액결제
		*/
		merchant_uid: 'merchant_' + new Date().getTime(),
		/*
		merchant_uid에 경우
		https://docs.iamport.kr/implementation/payment
		위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
		참고하세요.
		나중에 포스팅 해볼게요.
		*/
		name: '주문명:결제테스트',
		//결제창에서 보여질 이름
		amount: 1000,
		//가격
		buyer_email: 'iamport@siot.do',
		buyer_name: '구매자이름',
		buyer_tel: '010-1234-5678',
		buyer_addr: '서울특별시 강남구 삼성동',
		buyer_postcode: '123-456',
		m_redirect_url: 'https://www.yourdomain.com/payments/complete'
		/*
		모바일 결제시,
		결제가 끝나고 랜딩되는 URL을 지정
		(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
		*/
		}, function (rsp) {
		console.log(rsp);
		if (rsp.success) {
		var msg = '결제가 완료되었습니다.';
		msg += '고유ID : ' + rsp.imp_uid;
		msg += '상점 거래ID : ' + rsp.merchant_uid;
		msg += '결제 금액 : ' + rsp.paid_amount;
		msg += '카드 승인번호 : ' + rsp.apply_num;
		} else {
		var msg = '결제에 실패하였습니다.';
		msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
			});
		});
	</script>
