package com.hb.test;

import org.springframework.aop.config.AdvisorComponentDefinition;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	public IndexController() {
		System.out.println("IndexController 생성자");
	}
	
	@RequestMapping(value="/")
	public ModelAndView input(){
		return new ModelAndView("input");
	}
	
	@RequestMapping("/index.do")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("name", "홍길동");
		mv.addObject("age", 30);
		mv.addObject("tel", "010-9269-5754");
		return mv;
	}
	
	@RequestMapping("/start.do")
	public ModelAndView start(){
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("name", "둘리");
		mv.addObject("age", 100000000);
		mv.addObject("tel", "112");
		return mv;
	}
}
