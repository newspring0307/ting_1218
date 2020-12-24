<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <header style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" style="color:#3c3c3c">ting</a> 
		       </div>
		        <div class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
                  <li class="active" style="color:#3c3c3c"><a href="index.jsp"><span style="color:#3c3c3c">팅 이 란?</span></a></li>
                  <li><a href="Tingtoday_0_main"><span style="color:#3c3c3c">팅 투 하 자!</span></a></li>
                  <li><a href="Premium_0_main"><span style="color:#3c3c3c">Premium</span></a></li>
                  <li><a href="Fun_0_main"><span style="color:#3c3c3c">F U N</span></a></li>
                  <li><a href="Client_6_question"><span style="color:#3c3c3c">문 의</span></a></li>
                  <c:if test="${sessionScope.UID eq null}">
                     <li><button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="login">로그인</button></li>
                     <li><button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="register">회원가입</button></li>
                  </c:if>
                  <c:if test="${sessionScope.UID ne null}">
						<li><a href="Client_0_main" data-nav-section="mypage"><span>마이페이지</span></a></li>
                     <li><a><button class="btn btn-sm" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="logout">Logout</button></a></li>
                  </c:if>
               </ul>
		        </div>
		    </div>
	</header>