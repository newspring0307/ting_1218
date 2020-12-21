package com.ting.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.ting.dao.LoginLogDAO;
import com.ting.domain.ClientInfoVO;
import com.ting.domain.LoginLogVO;


@Component
@Aspect
public class LogAspect {

	@Autowired
	private LoginLogDAO loginLogDAO;
	
	@Around("execution(* com.ting.controller.ClientInfoController.loginf*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		// ���ڰ�
		Object[] fd = jp.getArgs();
		ModelAndView rpath = null;
		// �޼��� �̸�
		String methodName = jp.getSignature().getName();
		if (methodName.equals("loginf")) {
			// ���ǰ��� �ִٸ� �α��� ���� ����
			LoginLogVO vo = new LoginLogVO();
			try {
				rpath = (ModelAndView) jp.proceed(); // target�� �޼��带 ȣ���Ѵ�.
				// ù��°���ڿ� �ι��� �ΰ����� ������ �ν��Ͻ� �� ��쿡�� ����
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					Object clientIdx = session.getAttribute("clientIdx");
					// ������ ���� ���ͼ� ������ ��츸
					if (clientIdx != null) {
						// �����ͺ��̽��� ������ ���� ����
						vo.setIdxn((int)clientIdx);
						vo.setStatus("login");
						vo.setReip(request.getRemoteAddr());
						vo.setUagent("web");
						loginLogDAO.addLoginLogging(vo);
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		} else if (methodName.equals("loginfout")) {
			LoginLogVO vo = new LoginLogVO();
			try {
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					Object clientIdx = session.getAttribute("clientIdx");
					if (clientIdx != null) { // ������ ������ �� ó�� 
						// �����ͺ��̽��� ������ ���� ����
						vo.setIdxn((int)clientIdx);
						vo.setStatus("logout");
						vo.setReip(request.getRemoteAddr());
						vo.setUagent("web");
						loginLogDAO.addLoginLogging(vo);
						System.out.println("db들어가기 완료");
					}
					// logoutó�� 
					rpath = (ModelAndView) jp.proceed();
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		System.out.println("insert!===================");
		return rpath;

	}
}
