<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->
	<div id="mainContainer" class="container" style="width: 1000px">
		<div class="twoColumn">
			<section class="mainCol">
			
				
				
				
				<!-- 나의프로필 -->
				
				<section class="profilePage account">
					<h2 class="h1">나의 프로필</h2>
					<div class="box profileHeader">
						<article class="profileInfo">
							<a href="#" class="imgWrp" style="background-color: #D8D8D8 "
								target="_blank" data-index="0"><img src="resources/css/asd.j" alt=""></a>
							<div class="intro">
								<div class="form whiteForm username">
									<div class="field input">
										<label for="editUserNameInput">이름</label>${myDetailInfo.name}
									</div>
									<form method="POST" action="updateClientDetailInfo">
									<div class="field input">
										<label for="editUserNameInput1">닉네임</label><input
											type="text" name="nickname" id="nickname" placeholder="닉네임"
											value="${myDetailInfo.nickname}">
									</div>
									

								<div class="form whiteForm aboutMe">
									<header class="editHeader leftAligned">
										<h3>자기 소개</h3>
									</header>
									<p class="hidden"></p>
									<div class="field text">
										<textarea name="selfIntro" placeholder="자기 소개...">${myDetailInfo.selfIntro}</textarea>
									</div>
									
									
									
									
									
								</div>

								<div class="ui compact menu">
									<div class="ui simple dropdown item">
										<font _mstmutation="1" _msthash="2126644"
											_msttexthash="21094424"> 도움말 / 지원 </font><i class="dropdown icon"></i>
										<div class="menu">
											<div class="item" _msthash="3034434" _msttexthash="10065549">선택1
												</div>
											<div class="item" _msthash="3035396" _msttexthash="10065666">비밀번호리셋
												</div>
											<div class="item" _msthash="3036358" _msttexthash="82082">선택3
												</div>
										</div>
									</div>
								</div>


							</div>
						</article>
					</div>
					<!-- 나의프로필 -->
					
					
					<!-- 내정보 -->
					<div class="box profileFacts">
						<header class="editHeader">
							<h3>내정보</h3>
							
						</header>
						
						<div class="grid cols-1 cols-m-2 form whiteForm factForm">
							
							<div class="field select single height">
								<label for="factFormField-Height">키</label>
								<div class="wrp">
									<select id="factFormField-Height" name="height"><option
											value="${myDetailInfo.height}">${myDetailInfo.height} cm</option>
										<option value="140">140 cm</option>
										<option value="141">141 cm</option>
										<option value="142">142 cm</option>
										<option value="143">143 cm</option>
										<option value="144">144 cm</option>
										<option value="145">145 cm</option>
										<option value="146">146 cm</option>
										<option value="147">147 cm</option>
										<option value="148">148 cm</option>
										<option value="149">149 cm</option>
										<option value="150">150 cm</option>
										<option value="151">151 cm</option>
										<option value="152">152 cm</option>
										<option value="153">153 cm</option>
										<option value="154">154 cm</option>
										<option value="155">155 cm</option>
										<option value="156">156 cm</option>
										<option value="157">157 cm</option>
										<option value="158">158 cm</option>
										<option value="159">159 cm</option>
										<option value="160">160 cm</option>
										<option value="161">161 cm</option>
										<option value="162">162 cm</option>
										<option value="163">163 cm</option>
										<option value="164">164 cm</option>
										<option value="165">165 cm</option>
										<option value="166">166 cm</option>
										<option value="167">167 cm</option>
										<option value="168">168 cm</option>
										<option value="169">169 cm</option>
										<option value="170">170 cm</option>
										<option value="171">171 cm</option>
										<option value="172">172 cm</option>
										<option value="173">173 cm</option>
										<option value="174">174 cm</option>
										<option value="175">175 cm</option>
										<option value="176">176 cm</option>
										<option value="177">177 cm</option>
										<option value="178">178 cm</option>
										<option value="179">179 cm</option>
										<option value="180">180 cm</option>
										<option value="181">181 cm</option>
										<option value="182">182 cm</option>
										<option value="183">183 cm</option>
										<option value="184">184 cm</option>
										<option value="185">185 cm</option>
										<option value="186">186 cm</option>
										<option value="187">187 cm</option>
										<option value="188">188 cm</option>
										<option value="189">189 cm</option>
										<option value="190">190 cm</option>
										<option value="191">191 cm</option>
										<option value="192">192 cm</option>
										<option value="193">193 cm</option>
										<option value="194">194 cm</option>
										<option value="195">195 cm</option>
										<option value="196">196 cm</option>
										<option value="197">197 cm</option>
										<option value="198">198 cm</option>
										<option value="199">199 cm</option>
										<option value="200">200 cm</option>
										<option value="201">201 cm</option>
										<option value="202">202 cm</option>
										<option value="203">203 cm</option>
										<option value="204">204 cm</option>
										<option value="205">205 cm</option>
										<option value="206">206 cm</option>
										<option value="207">207 cm</option>
										<option value="208">208 cm</option>
										<option value="209">209 cm</option>
										<option value="210">210 cm</option>
										<option value="211">211 cm</option>
										<option value="212">212 cm</option>
										<option value="213">213 cm</option>
										<option value="214">214 cm</option>
										<option value="215">215 cm</option>
										<option value="216">216 cm</option>
										<option value="217">217 cm</option>
										<option value="218">218 cm</option>
										<option value="219">219 cm</option>
										<option value="220">220 cm</option></select>
								</div>
							</div>
							<div class="field select single body">
								<label for="factFormField-Body">체형</label>
								<div class="wrp">
									<select id="factFormField-Body" name="bodyShape"><option
											value="${myDetailInfo.bodyShape}">${myDetailInfo.bodyShape}</option>
										<option value="날씬함">날씬함</option>
										<option value="보통">보통</option>
										<option value="근육질">근육질</option>
										<option value="통통한">통통한</option></select>
								</div>
							</div>
							<div class="field select single smoker">
								<label for="factFormField-Smoker">흡연자</label>
								<div class="wrp">
									<select id="factFormField-Smoker" name="smoke"><option
											value="${myDetailInfo.smoke}">${myDetailInfo.smoke}</option>
										<option value="비흡연">비흡연</option>
										<option value="가끔">가끔</option>
										<option value="종종">종종</option>
										<option value="매일">매일</option></select>
								</div>
							</div>
							<div class="field select single alcohol">
								<label for="factFormField-Alcohol">음주</label>
								<div class="wrp">
									<select id="factFormField-Alcohol" name="drink"><option
											value="${myDetailInfo.drink}">${myDetailInfo.drink}</option>
										<option value="안 마심">안 마심</option>
										<option value="1병 이하">1병 이하</option>
										<option value="1병 - 2병">1병 - 2병</option>
										<option value="2병 초과">2병 초과</option></select>
								</div>
							</div>
							<div class="field select single education">
								<label for="factFormField-Education">교육</label>
								<div class="wrp">
									<select id="factFormField-Education" name="education"><option
											value="${myDetailInfo.education}">${myDetailInfo.education}</option>
										<option value="중졸">중졸</option>
										<option value="고졸">고졸</option>
										<option value="대졸">대졸</option>
										<option value="석박사">석박사</option></select>
								</div>
							</div>
							<div class="field select single profession">
								<label for="factFormField-Profession">직업</label>
								<div class="wrp">
									<select id="factFormField-Profession" name="job"><option
											value="${myDetailInfo.job}">${myDetailInfo.job}</option>
										<option value="구직중">구직중</option>
										<option value="견습생">견습생</option>
										<option value="직원">직원</option>
										<option value="공무원">공무원</option>
										<option value="주부">주부</option>
										<option value="은퇴함">은퇴함</option>
										<option value="개인 사업">개인 사업</option>
										<option value="학생">학생</option></select>
								</div>
							</div>
							
							<div class="field select single relationshipstatus">
								<label for="factFormField-Relationship status">종교</label>
								<div class="wrp">
									<select id="factFormField-Relationship status"
										name="religion"><option value="${myDetailInfo.religion}">${myDetailInfo.religion}</option>
										<option value="무교">무교</option>
										<option value="기독교">기독교</option>
										<option value="불교">불교</option>
										<option value="천주교">천주교</option>
										<option value="그외">그외</option></select>
								</div>
							</div>
							
							
							
						
						</div>
					</div>
					<div>
						<div class="fiield" style="float:right; padding: 10px 0px 10px 0px">
							<h2><input type="submit" class="btn" value="저장하기"></h2>

						</div>
					</div>
					</form>
				</section>
				
				
		</div>
		
		
		
		
	</div>
	
	<!-- 내정보 -->

	<!---------------------------------- Footer start ---------------------------------->
