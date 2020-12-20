<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!---------------------------------- header end ---------------------------------->

<!----------------------------------content start---------------------------------->
<br><br>
<!--게시판 해더-->
	<header>
	<h1 align="center">결제 내역</h1>
	</header>
<!--게시판 해더-->
<br><br>
	<div class="container">	
		<div class="row">	
			<table class="payment" style="text-align: center; border: 1px solid #dddddd">	
						<thead>
						<tr>	
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">구매일자</th>					
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">구매상품</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">상품가격</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">결제방법</th>									
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
