<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br><br>
<!--�Խ��� �ش�-->
	<header>
	<h1 align="center">������ ������</h1>
	</header>
<!--�Խ��� �ش�-->
<br><br>
<!--�Խ��� ���̺�-->
			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- ���� �����̾� -->
				<div class="���ƿ�"> 

				</div>
	<div class = "TingToday_list contents-wrap">
		<table class="table table-striped"style="text-align: center; border: 1px solid #dddddd;" width="50">
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

			
			</tbody>
		</table>			
	</div>
	</div>
	</div>
