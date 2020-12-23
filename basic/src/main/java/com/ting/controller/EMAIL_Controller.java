package com.ting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ting.domain.ClientInfoVO;
import com.ting.service.EMAIL_Service;


@Controller
public class EMAIL_Controller {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private EMAIL_Service eMAIL_Service;


	@PostMapping("/certifi_email")
	public ModelAndView passEmail(HttpServletRequest request, ClientInfoVO vo, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html;charset=utf-8");
		

		if (ObjectUtils.isEmpty(eMAIL_Service.email_check(vo))) {
			PrintWriter out = response.getWriter();
			out.print("�ش� ������ �������� �ʽ��ϴ�.");
			out.close();
			return null;
		} else {
	
			Random num = new Random();
			int cnum = num.nextInt(10203) + 1229;
	
			
			try {
				
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				
				messageHelper.setFrom("jennymaster2020@gmail.com");
				messageHelper.setTo(vo.getEmail());
				messageHelper.setSubject( "��й�ȣ ã�� ���� �̸��� �Դϴ�."); 
				messageHelper.setText("\n - ting ��й�ȣ ã�� - \n\n" + "��й�ȣ ã�� ������ȣ�� [ " + cnum + " ] �Դϴ�. "); 

				mailSender.send(message);

			} catch (Exception e) {
				System.out.println(e);
			}

			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Main_login_1_PW_certifi"); 
			mv.addObject("certifi_num", cnum);
			mv.addObject("email", vo.getEmail());

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('������ȣ�� �ش� �̸��Ϸ� �߼��Ͽ����ϴ�. ������ȣ�� �Է����ּ���.');</script>");
			out.flush();

			return mv;

		}

	}
	
	
	@PostMapping("/certifi_check")
	public ModelAndView certifi_check(HttpServletRequest request, ClientInfoVO vo,HttpServletResponse response)
			throws IOException {
		
		ModelAndView mv = new ModelAndView();
	
		if (request.getParameter("input_certifi_num").equals(request.getParameter("certifi_num"))) {
			
			mv.setViewName("/Main_login_1_PW_reset");
			mv.addObject("email", vo.getEmail());
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('���������� �����Ǿ����ϴ�. ��й�ȣ�� �缳�� ���ּ���.');</script>");
			out.flush();

			return mv;

		} 
		
		else  {
			
			mv.setViewName("/Main_login_1_PW_certifi");
			mv.addObject("email", vo.getEmail());
			mv.addObject("certifi_num", request.getParameter("certifi_num"));
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('������ȣ�� ��ġ�����ʽ��ϴ�. ������ȣ�� �ٽ� �Է����ּ���.'); </script>");
			out.flush();
			return mv;
			
		}

	}

	@PostMapping( "/reset_pwd")
	public ModelAndView reset_pwd(ClientInfoVO vo, HttpServletResponse response) throws Exception {
		
		eMAIL_Service.reset_pwd(vo);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('��й�ȣ�� ���������� ����Ǿ����ϴ�.'); </script>");
		out.flush();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Main_login_0");
		return mv;
		
	}

}