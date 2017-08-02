package com.hb.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.tracing.dtrace.ModuleAttributes;

@Controller
public class MyController {
	
	/*
	@RequestMapping("/join.do")
	public ModelAndView join(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView("result");
		// 방법1 
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String[] hobby = request.getParameterValues("hobby");
		mv.addObject("id", id);
		mv.addObject("pwd", pwd);
		mv.addObject("hobby", hobby);
		
		// 방법2 
		// Map<String, String> map = new HashMap<String, String>();
		// map.put("id", id);
		// map.put("pwd", pwd);
		// mv.addObject("map",map);
		
		// 방법3 VO를 이용하는 방법
		VO vo = new VO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setHobby(hobby);
		mv.addObject("vo",vo);
		
		return mv;
	}
	*/
	// 방법4
	/*
	@RequestMapping("/join.do")
	public ModelAndView join(VO vo){
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("vo", vo);
		return mv;
	}
	*/
	// 방법5
	@RequestMapping("/join.do")
	public ModelAndView join(@ModelAttribute("vo")VO vo){
		return new ModelAndView("result");
	}
	
}













