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
	
	
	//회원가입 후 매력포인트 체크리스트 출력 
	@RequestMapping(value = "/Client_4_charmingPointInsert")
	public String getInterestList(CharmingPointVO vo, Model m) {
			List<CharmingPointVO> result = charmingPointService.getCharmingPointList(vo);
			m.addAttribute("charmingPointList", result);
			return "/Client_4_charmingPointInsert";
	}
	
	//내 매력포인트 체크사항 insert 
	@RequestMapping("/insertClientCharmingPoint")
	public String insertClientInterest(ClientCharmingPointVO vo,HttpSession session
			,@RequestParam("arr") String[] arr) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		for(String s : arr) {
			vo.setCharmingPointIdx(Integer.parseInt(s));
			clientCharmingPointService.insertClientCharmingPoint(vo);
		}
		return "/Client_4_detailInsert2";
	}
}
