package com.hb.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@RequestMapping("/join.do")
	public ModelAndView join(HttpServletRequest request, HttpServletResponse response){
		/*ModelAndView mv = new ModelAndView("result");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		
		mv.addObject("id", id);
		mv.addObject("pwd", pwd);
		mv.addObject("name", name);
		mv.addObject("gender", gender);
		mv.addObject("hobby", hobby);
		
		return mv;*/
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("name", name);
		
		mv.addObject("map", map);
		return mv;
		
	}
}
