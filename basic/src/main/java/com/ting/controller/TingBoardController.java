package com.ting.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.dao.TingBoardDAO;
import com.ting.domain.PageVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.TingBoardService;

@Controller
public class TingBoardController {

	@Autowired
	private TingBoardService tingBoardService;
	
	@Autowired
	public TingBoardDAO tingBoardDAO;
	
	@RequestMapping("/insertBoard")
	public String insertBoard(TingBoardVO vo) {
		System.out.println("======");
		tingBoardService.insertBoard(vo);
		return "redirect:/Tingtoday_0_main";
	}

	   @RequestMapping("/updateBoard")
	   public String updateBoard(TingBoardVO vo) {
	      
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
	  public String listSearch( PageVO vo, Model model
			  , @RequestParam(value="nowPage", required=false , 
			  defaultValue="1") String nowPage 
			  , @RequestParam(value="cntPerPage", required=false , 
			  defaultValue="10") String cntPerPage){ 
		  System.out.println("토탈 전");
		  int total = tingBoardDAO.getTotalCount();
		  System.out.println("토탈 후");
		   
		 
		  
		  vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage)); 
		  	System.out.println("Start :"+vo.getStart());
			System.out.println("End :"+vo.getEnd()); 
			model.addAttribute("paging", vo);
			model.addAttribute("boardList",tingBoardService.getList(vo) ); 
			  
	
		
			  return "/Tingtoday_0_main";
	  }
	 	  
	
		


	@RequestMapping("/Tingtoday_0_view")
	public void getBoard(TingBoardVO vo,Model m) {
	   TingBoardVO result = tingBoardService.getBoard(vo);
	   m.addAttribute("board",result);
	}
	


}

/*		
@RequestMapping("/Tingtoday_0_main")
public void getBoardList(TingBoardVO vo, Model m){
//BoardVO vo: �씠�쟾�솕硫댁뿉�꽌 �꽆�뼱�삤�뒗 �뙆�씪誘명꽣 ���옣(�쁽�옱�뒗 �뜲�씠�꽣 �뾾�쓬)

System.out.println("1"); List<TingBoardVO> result =
tingBoardService.getBoardList(vo);

System.out.println("2"); m.addAttribute("boardList", result);
System.out.println(result);
}

*/
/*	
	 
@RequestMapping(value="/Tingtoday_0_main")
public String listSearch(PageVO vo, Model model
		, @RequestParam(value="nowPage", required=false , 
		defaultValue="1") String nowPage
		, @RequestParam(value="cntPerPage", required=false , 
		defaultValue="5") String cntPerPage){
	int total = tingBoardDAO.getTotalCount();

	vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	System.out.println("Start :"+vo.getStart());
	System.out.println("End :"+vo.getEnd());
	model.addAttribute("paging", vo);	
	model.addAttribute("list", tingBoardDAO.getList(vo));
	return "Tingtoday_0_main";
}	  
	 
*/
	
