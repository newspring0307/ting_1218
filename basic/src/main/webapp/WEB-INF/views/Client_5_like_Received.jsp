<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!---------------------------------- header end ---------------------------------->
<!--여기에 내용 넣으세요-->

			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- 나의 프리미엄 -->
				<div class="좋아요"> 

				</div>

<!----------------------------------------------------------------------------------------->
<br><br>
<!--게시판 해더-->
	<header>
	<h1 align="center">♡나를 좋아하는 이성♡</h1>
	</header>
<!--게시판 해더-->
<br><br>
<!--게시판 테이블-->
	<div class = "TingToday_list contents-wrap">
		<table class="table table-striped"style="text-align: center; border: 1px solid #dddddd;" width="100">
			<thead>
				<tr style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">						
					<th style="text-align: center;border-right: 1px solid #eeeeee; ">받은 좋아요 목록</th>	
															
				</tr>
			</thead>								
			<tbody>
				<c:forEach items="${likeReceive}" var="likeReceive">
				 <tr>
				  <td>
				 <img src="resources/images/question.png" width="40" height="40" style="border-radius: 70%; border:1px solid gray;">
				  <a style="color:red;" href = 'Client_2_Ting_like_reply?clientIdx=${likeReceive.clientIdx }'>&nbsp;&nbsp;${likeReceive.nickname}</a>님이 좋아요를 보냈어요! 
				  <a style="color:gray; ">&nbsp;&nbsp;&nbsp;&nbsp;당신의 이상형과 30% 일치해요</a>
				  </td>
				 </tr>
				</c:forEach>

			
			</tbody>
		</table>			
	</div>
	</div>
	</div>
<!--게시판 테이블-->
