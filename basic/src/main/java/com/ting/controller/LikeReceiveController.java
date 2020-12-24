package com.ting.controller;


import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.CoupleDecisionVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.CoupleDecisionService;
import com.ting.service.LikeReceiveService;




@Controller
public class LikeReceiveController {
	
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;

	@Autowired
	private LikeReceiveService likeReceiveService;
	@Autowired
	private CoupleDecisionService coupleDecisionService;

	//상대방에게 좋아요 보내기
	@RequestMapping("/insertLikeReceive")
	public String insertLikeReceive(LikeReceiveVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("좋아요보내는사람"+vo.getSendIdx());
		likeReceiveService.insertLikeReceive(vo);
		ClientDetailInfoVO c= new ClientDetailInfoVO();
		c.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.reduceTotalHeart(c);
		return "/Client_2_Ting_result";
	}
	   
	//내가 받은 좋아요 리스트 출력
	@RequestMapping("/Client_5_like_Received")
	public String getLikeReceiveList(LikeReceiveVO vo, Model m,HttpSession session) {
		if (session.getAttribute("clientIdx") == null) {
			System.out.println(session.getAttribute("clientIdx"));
			return "Main_login_0";
		}else {
			System.out.println(session.getAttribute("clientIdx"));
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		List<LikeReceiveVO> result = likeReceiveService.getLikeReceiveList(vo);
		m.addAttribute("likeReceive", result);
		return "/Client_5_like_Received";
		}
	}
	//내가 보낸 좋아요 리스트 출력
	@RequestMapping("/Client_5_like_Sent")
	public String getLikeSendList(LikeReceiveVO vo, Model m,HttpSession session) {
			System.out.println(session.getAttribute("clientIdx"));
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		List<LikeReceiveVO> result = likeReceiveService.getLikeSendList(vo);
		m.addAttribute("likeSend", result);
		return "/Client_5_like_Sent";
	}


	//나에게 좋아요 보낸 사람에게 맞좋아요 보냄
	@RequestMapping("/Client_2_Ting_result2")
	public String matchProcessing(CoupleDecisionVO vo, Model m,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		coupleDecisionService.insertCoupleDecision(vo);	
		likeReceiveService.updateLikeReceive();
		return "/Client_2_Ting_result2";
	}

}