<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!---------------------------------- header end ---------------------------------->

<!--���⿡ ���� ��������-->
<br><br>
<!--���� header-->
			<header>
			<h1 align="center">��������</h1>
			</header>
<!--���� header-->
<br><br>
<!-- ���̺� -->
	<div style="padding-left: 5%;">
		<form action="kakao.do">
			<table class="w3-table-all notranslate">											
				<thead>
					<tr>
					  <th style="border: 2px solid #52D3AA;width: 120px; height: 100px;"><h3 align="center">��������</h3></th>
					  <th style="border: 2px solid #52D3AA;width: 400px;padding:10px;"><h4 align="center">KakaoPay</h4></th>			                  
					</tr>
				</thead>
				<tbody> 
					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">������</h5></td>
						<td style="border: 2px solid #52D3AA;width: 400px;padding:10px;"><h2 align="center">
						<p><span name="name" value="fnzl">����� ID</span></p></h2>
																																							                  
						</td>						
					</tr>
					
					<tr>				                
						<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">��ȭ��ȣ</h5></td>
						<td style="border: 2px solid #52D3AA;">
							<div class="ui input focus" style="padding-left: 10%;">
								<p><input type="text" name="phone" style="width: 320px;height: 55px;text-align:center" placeholder="-���� �Է��ϼ���"></p>																
							</div>					                  
						</td>						
					</tr>	
									                
					 <tr>
					    <td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">�̸���</h5></td>
					    <td style="border: 2px solid #52D3AA;">
						    <div class="ui input focus" style="padding-left: 10%; ">
								<p><input name="email" style="width: 320px;height: 55px;text-align:center" placeholder="-���� �Է��ϼ���"></p>
								
							</div>					                  
						</td>				                  																																		                  	                 			                  
					</tr>
				<tr>
				<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">������ ��ǰ</h5></td>
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
		<!-- �̿������� -->
		<div class="form-control" align="center" style="width: 520px; height : 150px;padding:30px;">���� �Է��� ������ ������ <br>�������� �̿뿡 �����մϴ�.<br>
			<input type="checkbox" onclick="alert('�̿����� �����ϼ˽��ϴ�.');">
		</div><br> <br>
		<!-- �̿������� -->	
		
		<!-- ���� ��ư -->	         						       
		<div style="padding-left: 25%;">
			<input class="btn btn-primary btn-lg" type="submit" value="���� �Ϸ�" />
			<!-- <button id="check_module" type="button">���� ����Ʈ</button> -->
			<input class="btn btn-primary btn-lg" type="button" value="���� ���" onclick="moveCloseOff();" />				      				            
		</div>	
		<!-- ���� ��ư -->	
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
		var IMP = window.IMP; // ��������
		IMP.init('imp63155918');
		// 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���
		// i'mport ������ ������ -> ������ -> �������ĺ��ڵ�
		IMP.request_pay({
		pg: 'inicis', // version 1.1.0���� ����.
		/*
		'kakao':īī������,
		html5_inicis':�̴Ͻý�(��ǥ�ذ���)
		'nice':���̽�����
		'jtnet':����Ƽ��
		'uplus':LG���÷���
		'danal':�ٳ�
		'payco':������
		'syrup':�÷�����
		'paypal':������
		*/
		pay_method: 'card',
		/*
		'samsung':�Ｚ����,
		'card':�ſ�ī��,
		'trans':�ǽð�������ü,
		'vbank':�������,
		'phone':�޴����Ҿװ���
		*/
		merchant_uid: 'merchant_' + new Date().getTime(),
		/*
		merchant_uid�� ���
		https://docs.iamport.kr/implementation/payment
		���� url�� ���󰡽ø� ���� �� �ִ� ����� �ֽ��ϴ�.
		�����ϼ���.
		���߿� ������ �غ��Կ�.
		*/
		name: '�ֹ���:�����׽�Ʈ',
		//����â���� ������ �̸�
		amount: 1000,
		//����
		buyer_email: 'iamport@siot.do',
		buyer_name: '�������̸�',
		buyer_tel: '010-1234-5678',
		buyer_addr: '����Ư���� ������ �Ｚ��',
		buyer_postcode: '123-456',
		m_redirect_url: 'https://www.yourdomain.com/payments/complete'
		/*
		����� ������,
		������ ������ �����Ǵ� URL�� ����
		(īī������, ������, �ٳ��� ���� �ʿ����. PC�� ���������� callback�Լ��� ����� ������)
		*/
		}, function (rsp) {
		console.log(rsp);
		if (rsp.success) {
		var msg = '������ �Ϸ�Ǿ����ϴ�.';
		msg += '����ID : ' + rsp.imp_uid;
		msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
		msg += '���� �ݾ� : ' + rsp.paid_amount;
		msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
		} else {
		var msg = '������ �����Ͽ����ϴ�.';
		msg += '�������� : ' + rsp.error_msg;
		}
		alert(msg);
			});
		});
	</script>
