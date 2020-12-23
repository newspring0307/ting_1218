package com.ting.controller;

import javax.servlet.http.HttpServletRequest;
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
		System.out.println("qna_add����");
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		boardQnaService.boardQnaAdd(vo);
		return "redirect:/index.jsp";
	}
	@RequestMapping("/ask_result")
	public String report_result(BoardQnaVO vo,HttpSession session) {
		System.out.println("ask_result����");
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		boardQnaService.boardQnaAdd(vo);
		return "/ask_result.jsp";
	}
}
