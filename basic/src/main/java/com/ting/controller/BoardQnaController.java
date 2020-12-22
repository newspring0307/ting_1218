package com.ting.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.BoardQnaVO;
import com.ting.service.BoardQnaService;

@Controller
public class BoardQnaController {

	@Autowired
	private BoardQnaService boardQnaService;
	
	@RequestMapping("/qna_add")
	public String board_qna_add(BoardQnaVO vo,HttpSession session) {
		System.out.println("qna_add½ÇÇà");
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		boardQnaService.boardQnaAdd(vo);
		return "test";
	}
}
