package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.domain.CharmingPointVO;
import com.ting.domain.ClientCharmingPointVO;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.service.CharmingPointService;
import com.ting.service.ClientCharmingPointService;

@Controller
public class CharmingPointController {
	
	@Autowired
	private CharmingPointService charmingPointService;
	
	@Autowired
	private ClientCharmingPointService clientCharmingPointService;
	
	
	
	@RequestMapping(value = "/Client_4_charmingPointInsert")
	public String getInterestList(CharmingPointVO vo, Model m) {
			List<CharmingPointVO> result = charmingPointService.getCharmingPointList(vo);
			m.addAttribute("charmingPointList", result);
			System.out.println(result);
			return "/Client_4_charmingPointInsert";
		
	}
	
	//고객 상세정보 입력 메소드
	@RequestMapping("/insertClientCharmingPoint")
	public String insertClientInterest(ClientCharmingPointVO vo,HttpSession session
			,@RequestParam("arr") String[] arr) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("받은 데이터 길이"+arr.length);
		for(String s : arr) {
			System.out.println("데이터"+s);
			vo.setCharmingPointIdx(Integer.parseInt(s));
			clientCharmingPointService.insertClientCharmingPoint(vo);
		}
		return "/Client_4_detailInsert2";
	}
	
	
	
	
}
