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

	//�궡媛� �긽��諛⑹뿉寃� 泥섏쓬�쑝濡� 醫뗭븘�슂 蹂대궪�븣
	@RequestMapping("/insertLikeReceive")
	public String insertLikeReceive(LikeReceiveVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		likeReceiveService.insertLikeReceive(vo);
		ClientDetailInfoVO c= new ClientDetailInfoVO();
		c.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.reduceTotalHeart(c);
		return "/Client_2_Ting_result";
	}
	   
	//내가 받은 좋아요
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
	//내가 보낸 좋아요
	@RequestMapping("/Client_5_like_Sent")
	public String getLikeSendList(LikeReceiveVO vo, Model m,HttpSession session) {
			System.out.println(session.getAttribute("clientIdx"));
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		List<LikeReceiveVO> result = likeReceiveService.getLikeSendList(vo);
		m.addAttribute("likeSend", result);
		return "/Client_5_like_Sent";
	}


	//�굹�뿉寃� 醫뗭븘�슂蹂대궦 �궗�엺�븳�뀒 醫뗭븘�슂 �떟�옣蹂대깂
	@RequestMapping("/Client_2_Ting_result2")
	public String matchProcessing(CoupleDecisionVO vo, Model m,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		coupleDecisionService.insertCoupleDecision(vo);	
		likeReceiveService.updateLikeReceive();
		return "/Client_2_Ting_result2";
	}

}