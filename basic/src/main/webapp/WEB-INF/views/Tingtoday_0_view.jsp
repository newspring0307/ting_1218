<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 현재날짜 -->
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
<!-- 현재날짜 -->



   <style>
      a{
       font-family:'Jua', sans-serif
      }
      
      .pagination > li > a{      
      height: 50px;
      padding-top: 15px;
      width: 45px;
      }
   </style>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
            <div align="center"
               style="width: 100%; height: 100%; border: 0px solid; border-radius: 2em;"
               class="col-md-12 section-heading text-center">
               <font size="50pt">TingToday 게시판</font>
            </div>
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

   <section id="fh5co-intro" data-section="love">
      <div class="container">
         <div class=" section-heading text-center">
            <div align="center"
               style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto;">
               
               <div style="height: auto; width: 90%; text-align:left; padding-bottom: 40px">
                  <p><h1>${board.title}</h1></p>
                  <div class="WriterInfo" style="padding-bottom: 15px">
                     <a
                        href="#"
                        class="thumb"><img
                        src="https://t1.daumcdn.net/cfile/tistory/243FE450575F82662D"
                        alt="프로필 사진" width="80" height="80" align="left" style="margin-right: 20px"></a>
               
                     <div class="profile_area">
                        <div class="profile_info">
                           <div  style="padding-top: 10px">
                              <a id="" href="#" role="button"
                                 class="nickname"> <h1>${board.clientIdx}</h1>
                              </a>
                           </div>
                        </div>
                        <div class="article_info" style="padding-top: 10px">
                           <span class="date">${board.regdate}</span>
                           <%-- <span class="date"><c:out value="${today}"/></span> --%>
                        </div>
                     </div>
                  </div>
               </div>


            <!-- 내용 -->
               <div
                  style="height: auto; width: 90%; padding:40px 0px 40px 0px ; text-align:left; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
                  <c:choose>
             <c:when test="${board.fsize==0}">첨부파일 없음</c:when>
            
             <c:otherwise>
                <!-- <a href='resources/upload/${list.fname}'> -->
                   <img src="resources/upload/${board.fname}" width="30%;"><br/>               
                <!-- </a>  -->
             </c:otherwise>                                     
          </c:choose><br/>   <br/>   <br/>   <br/>   <br/>   <br/>      
                  <font size="5">${board.originalContent}
                  </font>
               </div>
            
          <!-- 내용 end-->
      <!-- 댓글 -->
      <div  style="width: 90%; text-align:left">
			<p><h1>댓글</h1>
			<c:forEach items="${rvo}" var="reply">
				<div class="comment-wrap">
					<div style=" border-top: 1px solid #E6E6E6;padding: 10px;">
				        <p>
				        작성자 : ${reply.regId}<br />
				        작성 날짜 :  <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" />
				        </p>
					</div>
			        <div style="height: auto; width: 100%; padding: 10px; text-align: left;">
						<font size="3">${reply.content}</font>
						<c:if test="${sessionScope.UID eq reply.regId}">
						<div style="float:right"">
							<button style="border: 0;outline: 0; background-color: #FFFFFF"><h3><a href="javascript:void(0)" onclick="modifyReply(this, '${board.boardIdx}', '${reply.commentIdx}', '${reply.content}');">수정</a></h3></button>
							<button style="border: 0;outline: 0; background-color: #FFFFFF"><h3><a href="deleteReply?commentIdx=${reply.commentIdx}&boardIdx=${board.boardIdx}">삭제</a></h3></button>
						</div>
						</c:if>				
					</div>
				</div>
		    </c:forEach> 
			
	  </div>
	  <form method="post" action="write" >
	      <div style="width: 90%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin-bottom: 40px">
			<strong>
				<p><h4 style="width: 90%; text-align:left; margin: 0 auto;">${sessionScope.UID}</h4></p>
			 <textarea class="autosize" rows="1" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="댓글을 남겨보세요" name="content" style=" width: 90%; height:17px; border: none;  resize: none; outline: none;"></textarea>
				<div style="width: 90%; text-align:right;">
					<input type="hidden" name="boardIdx" value="${board.boardIdx}">
					<input type="hidden" name="clientIdx" value="${board.clientIdx}">
					<button type="submit" style="border: 0;outline: 0; background-color: #FFFFFF"><h3>등록</h3></button>
				</div>
			</strong><!-- outline: none; -->
		  </div>
      </form>
      </div>
      <!-- 댓글 end --> 
	</section>

<!-- 댓글 -->
<script>
function resize(obj) {
  obj.style.height = "1px";
  obj.style.height = (12+obj.scrollHeight)+"px";
}


function modifyReply(obj, boardIdx, commentIdx, content){
	
	
	 var tag = "";
	 tag += '<div class="edit-wrap" style="width: 100%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin-bottom: 40px">'
	 tag +='<strong>'
	 tag +='<p><h4 style="width: 90%; text-align:left; margin: 0 auto;">${sessionScope.UID}</h4></p>'
	 tag +='<textarea class="autosize" rows="1" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="댓글을 수정하세요" name="content" style=" width: 90%; height:17px; border: none; margin-left :22px; resize: none; outline: none;">'+ content +'</textarea>'
	 tag +='<div style="width: 95%; text-align:right;">'
	 tag +='<input type="hidden" name="boardIdx" value="${board.boardIdx}">'
	 tag +='<input type="hidden" name="clientIdx" value="${board.clientIdx}">'
		 tag +='<button type="submit" style="border: 0;outline: 0; background-color: #FFFFFF"><h3 onclick="modifyComplate(\''+ boardIdx +'\',\'' + commentIdx +'\',this  )">완료</h3></button>'
	 tag +='</div>'
	 tag +='</strong>'
	 tag +='</div>'

	 
	$(obj).closest(".comment-wrap").html(tag);
}


function modifyComplate( boardIdx, commentIdx, obj){
	
	
	location.href = "modifyReply?commentIdx="+ commentIdx +"&boardIdx="+  boardIdx + "&content=" + $(obj).closest(".edit-wrap").find("textarea").val();
}

</script>
<!-- 댓글 end -->
<!--여기에 내용 넣으세요-->

         <div id="mainContainer" class="container">
            <div class="twoColumn">
               <section class="mainCol">
               <br><br>
               <!-- 나의 프리미엄 -->
            <div class="infoCenter"> 
            <!--  
               <h1>인기글 tingToday TOP</h1><br>
               <ul class="notifications count-3">

               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥김♥수♥환</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥수♥환♥쌤</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>

               </ul>-->
            </div>

<!----------------------------------------------------------------------------------------->
<br><br>
<!--게시판 해더-->
   <header>
   <h1 align="center">TingToday 게시판</h1>
   </header>
<!--게시판 해더-->
<br><br>
<!--게시판 테이블-->
   <div class = "TingToday_list">
      <form method="post" action="updateBoard" enctype="multipart/form-data" >
         <input type="text" id="title" name="title" class="form-control mt-4 mb-2" value="${board.title}" >
            
         <div class="form-group">
            <textarea class="form-control" rows="10" name="content"> ${board.originalContent}</textarea>
         </div>
         <input type="hidden" name="boardIdx" class="form-control" value="${board.boardIdx}"><br>
         <c:choose>
             <c:when test="${board.fsize==0}">첨부파일 없음</c:when>
            
             <c:otherwise>
                <!-- <a href='resources/upload/${list.fname}'> -->
                   <img src="resources/upload/${board.fname}" width="30%;">${board.fname}                  
                <!-- </a>  -->
             </c:otherwise>                                     
          </c:choose>                                     
         
      <input type="file" maxlength="60" size="40" name="file">            
      <button type="submit" class="ui teal button" style="left:84%; position: absolute;">수정</button>   
      </form><br>           
      <button type="submit" class="ui teal button" onclick="location.href='deleteBoard?boardIdx=${board.boardIdx}'">삭제</button>   
      <button type="submit" class="ui teal button" onclick="location.href='Tingtoday_0_main'">목록</button>         
   
         
  
   </div>
   </div>
   </div>
<!--게시판 테이블-->
         
<!-- 리모콘         
   <div class="remocon" style="display: block;position: fixed; top: 200px; left: 1690px; z-index: 1000;border: 2px solid #ddd;">                  
      <div class="remocon_main" style="border-bottom:  2px solid #ddd;text-align: center">
            <strong>리모콘</strong>                    
       </div>         
      <div class="remote_cont" style="padding: 10px;border-bottom:  2px solid #ddd;">
          <a href="#">인연 찾으러가기 </a>                           
      </div>                       
      <div class="ui large buttons">
      <button class="ui button">닫기</button>
      <div class="or"></div>
      <button class="ui button">목록</button>
      </div>            
   </div>
리모콘       -->

<!--검색창폼-->         
   <!-- <form action="#" method="POST" class="form-inline" align="right" style="padding-right: 10%">
      <div class="input-group" align="right">
         <p>                     
            <select class="form-control" name="target">
            <option value="all">전체</option>
            <option value="title">제목</option>
            <option value="nickname">작성자</option>
            </select>                     
         <input type="text" class="form-control" name="keyword" value="">         
         <button class="huge ui button">검색</button>            
         </p>
      </div>
   </form> -->
<!--검색창폼-->
         
<!--페이지-->         
<!--    <div class="page_num1" align="center" style="padding:3px;">
      <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#"><</a></li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item"><a class="page-link" href="#">6</a></li>
      <li class="page-item"><a class="page-link" href="#">7</a></li>
      <li class="page-item"><a class="page-link" href="#">8</a></li>   
      <li class="page-item"><a class="page-link" href="#">9</a></li>
      <li class="page-item"><a class="page-link" href="#">10</a></li>
      <li class="page-item"><a class="page-link" href="#">></a></li>
      </ul>
   </div> -->
<!--페이지-->   
   
<br><br>   
<br><br>

<!---------------------------------- Footer start ---------------------------------->

<!---------------------------------- Footer end ---------------------------------->