package com.hb.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	public IndexController() {
		System.out.println("IndexController 생성자");
	}
	@RequestMapping("/index.do")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("name","삼장법사");
		mv.addObject("age","34");
		return mv ;
	}
	
	@RequestMapping("/start.do")
	public ModelAndView start(){
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("name","손오공");
		mv.addObject("age","11");
		return mv ;
	}
}
