<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


	<!---------------------------------- header start ---------------------------------->
	<header style="background: linear-gradient(-135deg, #52D3AA, #54FFFF) fixed;">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.html" style="color:#1C1185">ting</a> 
		       </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
                  <li class="active"><a href="index.jsp"
                     data-nav-section="about"><span>팅이란?</span></a></li>
                  <li><a href="Main_company_1_team" data-nav-section="team"><span>team</span></a></li>
                  <li><a href="Tingtoday_0_main" data-nav-section="tingtoday"><span>팅투하자!</span></a></li>
                  <li><a href="Premium_0_main" data-nav-section="premium"><span>프리미엄</span></a></li>
                  <li><a href="Fun_0_main" data-nav-section="fun"><span>FUN</span></a></li>
                  <li><a href="Client_2_Ting_main" data-nav-section="contact"><span>문의</span></a></li>
                  <c:if test="${sessionScope.UID eq null}">
                     <li><button class="ui inverted teal button" id="login">로그인</button></li>
                     <li><button class="ui inverted teal button" id="register">회원가입</button></li>
                  </c:if>
                  <c:if test="${sessionScope.UID ne null}">
                     <li><button class="ui inverted teal button" id="logout">로그아웃</button></li>
                  </c:if>
               </ul>
		        </div>
		    </div>
	</header>
<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->
<br><br>
		<div class="gradient"></div>
			<div class="container">		
										
					<div class="text-wrap" style="top:100px; background-color: white;padding: 20px;" align="center">					
					<h1 style="text-align: left;">팅투데이 목록</h1>					
					<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
						<thead>										
							<tr>
							 	<th style="background-color: #52D3AA; text-align: center;border: 1px solid #dddddd;">번호</th>			 	
							 	<th width="50%" style="background-color: #52D3AA; text-align: center;border: 1px solid #dddddd;">제목</th>
							 	<th style="background-color: #52D3AA; text-align: center;border: 1px solid #dddddd;">닉네임</th>	
							 	<th style="background-color: #52D3AA; text-align: center;border: 1px solid #dddddd;">작성일</th>		 			 							 	
							</tr>
						</thead>
						<tbody>
						<tr>
							<td style="border-right:  1px solid #dddddd;"><font color="black"></font></td>
							<td style="border-right:  1px solid #dddddd;"><font color="black"><a href="#"></a></font></td>
							<td style="border-right:  1px solid #dddddd;"><font color="black"></font></td>
							<td style="border-right:  1px solid #dddddd;"><font color="black"></font></td>					
						</tr>
						</tbody>
					</table>				
						<div style="padding: 10px;">
							<a href="#" class="btn btn-success btn-arrow-Left">이전</a>
							<a href="#" class="btn btn-success btn-arrow-Left">다음</a>
						</div>
						<div class="tttt" style="background-color: white; float: right;padding-right: 20px;">
					
						</div>	
					</div>	
				</div>