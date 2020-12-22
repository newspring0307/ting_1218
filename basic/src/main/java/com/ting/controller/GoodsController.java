package com.ting.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ting.domain.GoodsVO;
import com.ting.service.GoodsService;


@Controller
public class GoodsController {

	
	 @Autowired 
	 private GoodsService goodsService;
	  
		
	@RequestMapping("/Premium_0_main")
	public String getGoodsList(GoodsVO vo, Model m) {			
		System.out.println("�떎�뻾1");
		List<GoodsVO> result = goodsService.getGoodsList(vo);
		m.addAttribute("GoodsList", result);
		System.out.println(result);
		return "/Premium_0_main";
		
	}
	
	
	
}
