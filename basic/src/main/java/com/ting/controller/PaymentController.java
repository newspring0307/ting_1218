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
	

	   //getMapping 에 입력된 페이지를 실행시 
	   // 아래의 코드를 실행
	   @GetMapping("/Premium_2_payresult")
	   public ModelAndView paymentResult(PaymentVO vo ) {		   	
		   	   System.out.println("Premium_2_payresult 실행");
		       System.out.println("Test1:"+vo.getClientIdx());
		       System.out.println("Test2:"+vo.getGoodIdx());
		       System.out.println("Test3:"+vo.getMethod());
		      ModelAndView mav = new ModelAndView();
		      paymentService.insertPayment(vo);
		      mav.setViewName("Premium_2_payresult");
		      return mav;
		   }
	   
		@RequestMapping("/PaymentList")
		public String getPaymentList(PaymentVO vo, Model m,HttpSession session) {			
			System.out.println("실행1");
			vo.setClientIdx((int)session.getAttribute("clientIdx"));
			List<PaymentVO> result = paymentService.getPaymentList(vo);		
			m.addAttribute("PaymentList", result);
			return "PaymentList";
			
			
		} 

		
		
	   
	   
}
