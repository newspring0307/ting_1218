package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.dao.TingBoardDAO;
import com.ting.domain.TingBoardVO;
import com.ting.service.TingBoardService;

@Controller
public class TingBoardController {

	@Autowired
	private TingBoardService tingBoardService;
	
	@RequestMapping("/insertBoard")
	public String insertBoard(TingBoardVO vo,HttpSession session) {
		System.out.println("======");
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		tingBoardService.insertBoard(vo);
		return "redirect:/Tingtoday_0_main";
	}
 
	   @RequestMapping("/updateBoard")
	   public String updateQuestion(TingBoardVO vo) {
	      
	      tingBoardService.updateBoard(vo);
	      return "redirect:/Tingtoday_0_main";
	   }
	 
/*	@RequestMapping("/updateBoard")
	public String updateBoard(TingBoardVO vo) {
		System.out.println("vo:"+vo.getBoardIdx());
	    tingBoardService.updateBoard(vo); 
	    return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
   }*/


   @RequestMapping("/deleteBoard")
   public String deleteBoard(TingBoardVO vo) {

	   tingBoardService.deleteBoard(vo);
      return "redirect:/Tingtoday_0_main";
   }

   
	@RequestMapping("/Tingtoday_0_main")
	public String getBoardList(TingBoardVO vo, Model m) {
		//BoardVO vo: 이전화면에서 넘어오는 파라미터 저장(현재는 데이터 없음)

		System.out.println("1");
		List<TingBoardVO> result = tingBoardService.getBoardList(vo);

		System.out.println("2");
		m.addAttribute("boardList", result);
		System.out.println(result);
		return "/Tingtoday_0_main";
		
	}
	
		
	@RequestMapping("/Tingtoday_0_view")
	public String getBoard(TingBoardVO vo,Model m) {
	   TingBoardVO result = tingBoardService.getBoard(vo);
	   m.addAttribute("board",result);
		return "/Tingtoday_0_view";
	}	
	@RequestMapping("/Tingtoday_0_write")
	public String getBoard() {
		return "/Tingtoday_0_write";
	}
	

}
