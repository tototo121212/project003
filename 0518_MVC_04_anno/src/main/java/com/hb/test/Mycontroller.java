package com.hb.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Mycontroller {
	@Autowired
	private MyProcess myProcess ;
	public MyProcess getMyProcess() {
		return myProcess;
	}
	public void setMyProcess(MyProcess myProcess) {
		this.myProcess = myProcess;
	}
	
	@RequestMapping("/hello.do")
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		ModelAndView mv = new ModelAndView("result");
		String msg = myProcess.getGreeting();
		mv.addObject("result",msg); 
		return mv;
	}
}




