<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. -->
    <% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
    
        // getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
        // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
  
        String heartcnt = request.getParameter("heartcnt");
        String clientIdx = request.getParameter("clientIdx");
        String Price = request.getParameter("Price");
        String goodIdx = request.getParameter("goodIdx");
        String poto = request.getParameter("poto");
 
        System.out.println("heartcnt:"+heartcnt);
        System.out.println("clientIdx:"+clientIdx);
        System.out.println("Price:"+Price);
        System.out.println("goodIdx:"+goodIdx);
        System.out.println("poto:"+poto);
        
    %>
	<!---------------------------------- header start ---------------------------------->

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
		<form action="kakao">
			<table class="w3-table-all notranslate">											
				<thead>
					<tr>
					  <th style="border: 2px solid #52D3AA;width: 120px; height: 100px;"><h3 align="center">결제수단</h3></th>
					  <th style="border: 2px solid #52D3AA;width: 400px;">
					  <input type="hidden" name="method" value="KakaoPay">
					  <h2 align="center">KakaoPay</h2></th>			                  
					</tr>
				</thead>
				<tbody> 
 					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">구매인</h5></td>
						<td style="border: 2px solid #52D3AA;width: 400px;padding:10px;" >
						<h2 align="center"><p><%=clientIdx %>&nbsp;</p></h2>																																						                  
						</td>						
					</tr>			
					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">상품명</h5></td>
						<td style="border: 2px solid #52D3AA;width: 400px;padding:10px;">
						<input type="hidden" name="clientIdx" value="<%=clientIdx %>"><!-- 여기에 세션값이 들어가야함 -->
						<input type="hidden" name="goodIdx" value="<%=goodIdx %>">	
						<h2 align="center"><p><%=heartcnt %>&nbsp;</p></h2>																																																	                  
						</td>						
					</tr>									                			
				<tr>
				<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">선택한 상품</h5></td>
				<td style="border: 2px solid #52D3AA;">
							<div class="ui form" style="padding-left: 25%;padding-top:20%;">				     
							 <div class="inline fields" align="center">  								
									<div class="ui radio checkbox" align="center">
										<img src="<%=poto %>" width="100px;" height="100px;"><hr>									
										<h4><%=heartcnt %></h4><br>
										<input name="totalPrice" value="<%=Price %>" style="text-align:center">
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
			<input class="btn btn-primary btn-lg" type="submit" value="결제 하기" />
			<input class="btn btn-primary btn-lg" type="button" value="결제 취소" onclick="moveCloseOff();" />				      				            
		</div>	
		<!-- 결제 버튼 -->	
		</form>		      
	</div>


 
        
	      
	      
	      
	            
<br><br>



	<!---------------------------------script----------------------------------------------->

	
	
	<script language="javascript">
	function moveCloseOff() {		
	  opener.location.href="Premium_0_main";		  
	  	close()  	  
	}				
	function go_result() { opener.location.href="Premium_2_payresult";
		
		close()
	}	
	  </script>
	  
	  
