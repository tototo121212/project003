package com.hb.am;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class StartController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("name", "둘리");
		mv.addObject("age", 2000000000);
		mv.addObject("tel", "010-9269-2212");
		return mv;
	}
	
}
