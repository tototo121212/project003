package com.hb.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class Mycontroller implements Controller{
	private MyProcess myProcess ;
	public MyProcess getMyProcess() {
		return myProcess;
	}
	public void setMyProcess(MyProcess myProcess) {
		this.myProcess = myProcess;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		ModelAndView mv = new ModelAndView("result");
		String msg = myProcess.getGreeting();
		mv.addObject("result",msg); 
		return mv;
	}
}




