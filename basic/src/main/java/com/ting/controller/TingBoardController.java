package com.ting.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.dao.TingBoardDAO;
import com.ting.domain.PageVO;
import com.ting.domain.ReplyVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.ReplyService;
import com.ting.service.TingBoardService;

@Controller
public class TingBoardController {

	@Autowired
	private TingBoardService tingBoardService;
	

	@Autowired
	private ReplyService replyService;
	
	@Autowired
	public TingBoardDAO tingBoardDAO;
	
	//팅투데이 게시판 글 insert
	@RequestMapping("/insertBoard")
	public String insertBoard(TingBoardVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		tingBoardService.insertBoard(vo);
		return "redirect:/Tingtoday_0_main";
	}
	//팅투데이 게시판 글 update
	@RequestMapping("/updateBoard")
	public String updateBoard(TingBoardVO vo) {
	      
		tingBoardService.updateBoard(vo);
	    return "redirect:/Tingtoday_0_main";
	   }
	
	//팅투데이 게시판 글 delete
   @RequestMapping("/deleteBoard")
   public String deleteBoard(TingBoardVO vo) {
	   
	   tingBoardService.deleteBoard(vo);
	   return "redirect:/Tingtoday_0_main";
   }
   //팅투데이 게시판 메인, 페이징처리
   @RequestMapping("/Tingtoday_0_main")
   public String listSearch( PageVO vo, Model model
			  , @RequestParam(value="nowPage", required=false , 
			  defaultValue="1") String nowPage 
			  , @RequestParam(value="cntPerPage", required=false , 
			  defaultValue="9") String cntPerPage){ 
	   int total = tingBoardDAO.getTotalCount();
		  
	   vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage)); 
	   model.addAttribute("paging", vo);
	   model.addAttribute("boardList",tingBoardService.getList(vo) ); 
	   return "/Tingtoday_0_main2";
	  }
   
   @RequestMapping("/Tingtoday_0_view")
   public String getBoard(HttpSession session,HttpServletRequest request,TingBoardVO vo,Model m, ReplyVO svo) {
      TingBoardVO result = tingBoardService.getBoard(vo);
      m.addAttribute("board",result);
      
   
      // 댓글 조회
      List<ReplyVO> reply = null;
      reply = replyService.getList(svo);
      m.addAttribute("rvo", reply);
      
      return "/Tingtoday_0_view";
   }
}

	
