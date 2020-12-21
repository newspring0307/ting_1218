package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.InterestVO;
import com.ting.service.ClientInterestService;
import com.ting.service.InterestService;

@Controller
public class InterestController {
	
	@Autowired
	private InterestService interestService;
	
	@Autowired
	private ClientInterestService clientInterestService;
	
	
	
	@RequestMapping(value = "/Client_4_interestInsert")
	public String getInterestList(InterestVO vo, Model m) {
			List<InterestVO> result = interestService.getInterestList(vo);
			m.addAttribute("InterestList", result);
			System.out.println(result);
			return "/Client_4_interestInsert";
		
	}
	
	//고객 상세정보 입력 메소드
	@RequestMapping("/insertClientInterest")
	public String insertClientInterest(ClientInterestVO vo,HttpSession session
			,@RequestParam("arr") String[] arr) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("받은 데이터 길이"+arr.length);
		for(String s : arr) {
			System.out.println("데이터"+s);
			vo.setInterestIdx(Integer.parseInt(s));
			clientInterestService.insertClientInterest(vo);
		}
		return "redirect:/Client_4_charmingPointInsert";
	}
	
	
	
	
}