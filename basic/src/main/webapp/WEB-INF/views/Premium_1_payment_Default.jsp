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
		<table class="w3-table-all notranslate">											
			<thead>
				<tr>
				  <th style="border: 2px solid #52D3AA;width: 120px; height: 100px;"><h3 align="center">��������</h3></th>
				  <th style="border: 2px solid #52D3AA;width: 400px;padding:10px;"><h4 align="center">KakaoPay</h4>				                  
				</tr>
			</thead>
			<tbody> 
				<tr>				                
					<td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">��ȭ��ȣ</h5></td>
					<td style="border: 2px solid #52D3AA;">
						<div class="ui input focus" style="padding-left: 15%; ">
						<input type="text" placeholder="-���� �Է��ϼ���">
						<button class="ui teal button" ><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ȯ��</font></font></button>
						</div>					                  
					</td>						
				</tr>				                
				 <tr>
				    <td style="border: 2px solid #52D3AA;height: 100px;" ><h5 align="center">�������</h5></td>
				    <td style="border: 2px solid #52D3AA;">
					    <div class="ui input focus" style="padding-left: 15%; ">
						<input type="text" placeholder="-���� �Է��ϼ���">
						<button class="ui teal button"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ȯ��</font></font></button>
						</div>					                  
					</td>				                  																																		                  	                 			                  
				</tr>	
				 <tr>
				     <td style="border: 2px solid #52D3AA;height: 200px;" ><h5 align="center">���û�ǰ</h5></td>
				     <td style="border: 2px solid #52D3AA;">	
				     			                  
				     <div class="ui form" style="padding-left: 10%;">				     
						 <div class="inline fields">  
							<div class="field">
								<div class="ui radio checkbox" align="center">
									<img src="images/img_7.jpg" width="55px;" height="55px;"> 
									<input type="radio" name="frequency" checked="checked">
									<label>PREMIUM 1</label>
									<h5>7,000</h5>
									<!-- ���߿� ������ -->
								</div>
							</div>
							<div class="field">
								<div class="ui radio checkbox" align="center">
									<img src="images/img_7.jpg" width="55px;" height="55px;">
									<input type="radio" name="frequency">
									<label>PREMIUM 2</label>
									<h5>25,000</h5>
								</div>
							</div>
							<div class="field">
								<div class="ui radio checkbox" align="center">
									<img src="images/img_7.jpg" width="55px;" height="55px;">
									<input type="radio" name="frequency">
									<label>PREMIUM 3</label>
									<h5>99,000</h5>
								</div>
							</div>							
						</div>
						
					</div>	                  
					</td>									 
				 </tr>		                					                 			                				               				                
			</tbody>    					          		                				             
		</table>	
		
		<!-- �̿������� -->
		<div class="form-control" align="center" style="width: 520px; height : 150px;padding:30px;">���� �Է��� ������ ������ <br>�������� �̿뿡 �����մϴ�.<br>
			<input type="checkbox" onclick="alert('�̿����� �����ϼ˽��ϴ�.');">
		</div><br> <br>
		<!-- �̿������� -->	
		
		<!-- ���� ��ư -->	         						       
		<div style="padding-left: 25%;">
			<input class="btn btn-primary btn-lg" type="button" value="���� �Ϸ�" onclick="go_result();"/>
			<input class="btn btn-primary btn-lg" type="button" value="���� ���" onclick="moveCloseOff();" />				      				            
		</div>	
		<!-- ���� ��ư -->			      
	</div>
		            
<br><br>

	
	<script language="javascript">
	function moveCloseOff() {		
	  opener.location.href="Premium_0_main.jsp";	
	  
	  	close()  
	  
	}				
	function go_result() { opener.location.href="Premium_2_payresult.jsp";
		
		close()
	}
	
	  </script>

