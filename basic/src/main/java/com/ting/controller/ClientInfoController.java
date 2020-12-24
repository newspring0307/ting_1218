package com.ting.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ting.domain.ClientInfoVO;
import com.ting.service.ClientInfoService;

@Controller
public class ClientInfoController {

	@Autowired
	private ClientInfoService clientInfoService;

	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Main_login_0");
		mav.addObject("msg", "login0");
		return mav;
	}
	//로그인
	@PostMapping(value = "/login")
	public String login(HttpSession session, ClientInfoVO clientInfoVO) throws IOException {

		ClientInfoVO loginCheck = clientInfoService.login(clientInfoVO);
		if (!ObjectUtils.isEmpty(loginCheck)) {
			session.setAttribute("UID", loginCheck.getEmail());
			session.setAttribute("clientIdx", loginCheck.getClientIdx());
			return "redirect:/";
		} else {
			return "/Main_login_0";
		}
	}
	
	//로그아웃
	@GetMapping(value = "/logout")
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//회원가입 페이지 이동
	@GetMapping("/register")
	public String registerClient(HttpSession session) {
		return "Main_register_2_membership";
	}
	
	//회원가입 
	@PostMapping("/register")
	public String registerClient(HttpSession session, @ModelAttribute ClientInfoVO clientInfoVO) {

		int registerRes = clientInfoService.register(clientInfoVO);
		ClientInfoVO loginCheck = clientInfoService.login(clientInfoVO);
		session.setAttribute("clientIdx", loginCheck.getClientIdx());
		session.setAttribute("UID", loginCheck.getEmail());
		return "redirect:/Client_4_detailInsertStart";
	}
	//회원가입
	@PostMapping("/deleteClientInfo")
	public String deleteClientInfo(HttpSession session) {
		return "";
	}

}