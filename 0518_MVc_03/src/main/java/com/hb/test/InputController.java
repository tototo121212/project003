package com.hb.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InputController {
	
	public InputController() {
		System.out.println("input 생성자");
	}
	@RequestMapping(value = "/")
	public ModelAndView input(){
		return new ModelAndView("input");
	}
}
