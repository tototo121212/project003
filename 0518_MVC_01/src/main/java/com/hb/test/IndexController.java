package com.hb.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// 컨트롤러(JSP에서는 모델 역할) 반드시  컨트롤러 상속 // 어노테이션
public class IndexController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1. 
		// ModelAndView mv = new ModelAndView();
		// mv.setViewName("result");
		// 비즈니스 로직 처리
		// return mv;
		
		// ModelAndView mv = new ModelAndView("result");
		// 비즈니스 로직 처리
		//return mv ;
		
		// return new ModelAndView("result");
		
		 ModelAndView mv = new ModelAndView("result");
		// 비즈니스 로직 처리
		// 데이터 저장 
		 mv.addObject("name", "홍길동");
		 request.setAttribute("age", 47);
		 HttpSession session =  request.getSession();
		 session.setAttribute("tel", "010-9797-7979"); 
		 return mv ;
	}
}












