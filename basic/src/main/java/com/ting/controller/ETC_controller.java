package com.ting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ETC_controller {
	
	@RequestMapping("/Premium_0_main")
	public String tiles2() {
		return "/Premium_0_main";
	}
	@RequestMapping("/Main_login_0")
	public String tiles3() {
		return "/Main_login_0.jsp";
	}
	@RequestMapping("/Main_register_0")
	public String tiles4() {
		return "/Main_register_0.jsp";
	}
	@RequestMapping("/Main_register_1_agree")
	public String tiles5() {
		return "/Main_register_1_agree.jsp";
	}
	@RequestMapping("/Main_register_2_membership")
	public String tiles6() {
		return "/Main_register_2_membership.jsp";
	}
	@RequestMapping("/index")
	public String tiles7() {
		return "/index.jsp";
	}
	
	
}
