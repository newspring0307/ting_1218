package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealTypeVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.IdealTypeService;

@Controller
public class ClientController {
	
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;
	
	@Autowired
	private IdealTypeService idealTypeService;
	
	@RequestMapping("/insertClientDetailInfo")
	public String insertClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("실행되는지확인");
		clientDetailInfoService.insertClientDetailInfo(vo);
		return "redirect:/Client_4_interestInsert";
	}
	
	//고객 사진 입력 메소드
	@RequestMapping("/updatePhotoClientDetailInfo")
	public String updatePhotoClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println(vo.getPhoto());
		clientDetailInfoService.updatePhotoClientDetailInfo(vo);
		return "redirect:/Ideal_0_idealTypeInsert";
	}
	
	//이상형 정보 입력 메소드
	@RequestMapping("/insertidealType")
	public String insertidealType(IdealTypeVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("실행되는지확인2");
		idealTypeService.insertIdealType(vo);
		return "redirect:/index";
	}
	
	//마이페이지 보기 메소드
	@RequestMapping("/Client_0_main")
	public String Client_0_main(ClientDetailInfoVO vo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("실행되는지확인3");
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		m.addAttribute("myDetailInfo", result);
		return "/Client_0_main";
	}
	
	//마이페이지 수정창 보기
	@RequestMapping("/Client_1_info_update")
	public String Client_1_info_update(ClientDetailInfoVO vo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("실행되는지확인3");
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		m.addAttribute("myDetailInfo", result);
		return "/Client_1_info_update";
	}

	//마이페이지 수정
	@RequestMapping("/updateClientDetailInfo")
	public String UpdateClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("실행되는지확인2");
		clientDetailInfoService.updateClientDetailInfo(vo);;
		return "redirect:/Client_1_info_update";
	}
	
	@RequestMapping(value = "/Client_2_Ting_main")
	public String getClientDetailInfoList(ClientDetailInfoVO vo, Model m, HttpSession session) {
		if (session.getAttribute("clientIdx") == null) {

			System.out.println(session.getAttribute("clientIdx"));
			return "Main_login_0";
		} else {
			vo.setClientIdx((int) session.getAttribute("clientIdx"));
			ClientDetailInfoVO vo2 = clientDetailInfoService.getClientDetailInfo(vo);
			vo.setGender(vo2.getGender());
			List<ClientDetailInfoVO> result = clientDetailInfoService.getClientDetailInfoList(vo);
			m.addAttribute("clientDetailInfo", result);
			int heartCnt = clientDetailInfoService.getTotalHeart(vo);
			System.out.println(heartCnt);
			m.addAttribute("heartCnt", heartCnt);
			return "/Client_2_Ting_main";
		}
	}
	
	//일반 매칭에서 매칭상대 상세정보 들어갔을때
	@RequestMapping("/Client_2_Ting_like")
	public String getClientDetailInfo(ClientDetailInfoVO vo,Model m,HttpSession session) {
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result2 = clientDetailInfoService.getClientDetailInfo(vo);
		m.addAttribute("clientDetailInfo",result);
		m.addAttribute("myClientDetailInfo",result2);
		int heartCnt= clientDetailInfoService.getTotalHeart(vo);
		System.out.println(heartCnt);
		m.addAttribute("heartCnt", heartCnt);
		return "/Client_2_Ting_like";
	}
	
	//나에게 좋아요보낸 사람중 닉네임눌러서 상세정보 들어갔을때
	@RequestMapping("/Client_2_Ting_like_reply")
	public String getLikeReceiveList2(ClientDetailInfoVO vo1,LikeReceiveVO vo2, Model m,HttpSession session) {
		vo2.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo1);
		vo1.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result2 = clientDetailInfoService.getClientDetailInfo(vo1);
		m.addAttribute("clientDetailInfo",result);
		m.addAttribute("myClientDetailInfo",result2);
		return "/Client_2_Ting_like_reply";
				}
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "/"+step;
	}
	
	
}
