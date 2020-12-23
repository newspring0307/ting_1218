package com.ting.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import com.ting.domain.PaymentVO;
import com.ting.service.PaymentService;




@Controller
public class PaymentController {

	
	
	@Autowired 
	 private PaymentService paymentService;
	

	   //getMapping �뿉 �엯�젰�맂 �럹�씠吏�瑜� �떎�뻾�떆 
	   // �븘�옒�쓽 肄붾뱶瑜� �떎�뻾
	   @GetMapping("/Premium_2_payresult")
	   public ModelAndView paymentResult(PaymentVO vo ) {		   	
		   	   System.out.println("Premium_2_payresult �떎�뻾");
		       System.out.println("Test1:"+vo.getClientIdx());
		       System.out.println("Test2:"+vo.getGoodIdx());
		       System.out.println("Test3:"+vo.getMethod());
		      ModelAndView mav = new ModelAndView();
		      paymentService.insertPayment(vo);
		      paymentService.updatetotalHeart(vo);
		      mav.setViewName("Premium_2_payresult");
		      return mav;
		   }
	   
		@RequestMapping("/PaymentList")
		public String getPaymentList(PaymentVO vo, Model m,HttpSession session) {			
			System.out.println("�떎�뻾1");
			vo.setClientIdx((int)session.getAttribute("clientIdx"));
			List<PaymentVO> result = paymentService.getPaymentList(vo);		
			m.addAttribute("PaymentList", result);
			return "PaymentList";
			
			
		} 

		
		
	   
	   
}
