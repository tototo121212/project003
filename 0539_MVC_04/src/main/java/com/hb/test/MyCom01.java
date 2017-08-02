package com.hb.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyCom01 {
	@Autowired
	private MyProcess myprocess;
	
	
	public MyProcess getMyprocess() {
		return myprocess;
	}

	public void setMyprocess(MyProcess myprocess) {
		this.myprocess = myprocess;
	}

	@RequestMapping(value="/")
	public ModelAndView input(){
		return new ModelAndView("input");
	}
	
	@RequestMapping("/mycom1.do")
	public ModelAndView Mycom01(){
		ModelAndView mv = new ModelAndView("result");
		String res  = myprocess.getGreeting();
		mv.addObject("res", res);
		return mv;
	}
}
