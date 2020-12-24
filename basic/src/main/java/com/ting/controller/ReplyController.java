package com.ting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ReplyVO;
import com.ting.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	// 댓글 조회
	
	// 댓글 작성
	@RequestMapping("/write")
	public String Wirte(ReplyVO vo, HttpServletRequest request) {

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.write(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}
	// 댓글 수정
	@RequestMapping("/modifyReply")
	public String Modify(ReplyVO vo, HttpServletRequest request) {

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.modify(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}
	
	// 댓글 삭제
	@RequestMapping("/deleteReply")
	public String Delete(ReplyVO vo, HttpServletRequest request) {

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.delete(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}

}
