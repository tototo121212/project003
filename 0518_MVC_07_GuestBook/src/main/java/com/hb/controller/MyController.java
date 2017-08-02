package com.hb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

@Controller
public class MyController {
	@Autowired
	private DAO dao ;

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/")
	public ModelAndView getList(){
		ModelAndView mv = new ModelAndView("list");
		List<VO> list = dao.getList();
		mv.addObject("list",list);
		return mv;
	}
	@RequestMapping("/onelist.hb")
	public ModelAndView getOneList(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("onelist");
		String idx = request.getParameter("idx");
		VO vo = dao.getOneList(idx);
		// 수정과 삭제를 위해서 현재 정보를 세션에 저장한다.
		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		return mv;
	}
	@RequestMapping("/write.hb")
	public ModelAndView write(HttpServletRequest request){
	return new ModelAndView("write");
	}
	
	@RequestMapping("/write_ok.hb")
	public ModelAndView write_ok(VO vo){
		   dao.getInsert(vo);
		return new ModelAndView("redirect:/");
	}
	@RequestMapping("/update.hb")
	public ModelAndView update(){
		return new ModelAndView("update");
	}
	@RequestMapping("/update_ok.hb")
	public ModelAndView update_ok(VO vo){
		dao.getUpdate(vo);
		return new ModelAndView("redirect:/onelist.hb?idx="+vo.getIdx());
	}
	@RequestMapping("/delete.hb")
	public ModelAndView delete(){
		return new ModelAndView("delete");
	}
	@RequestMapping("/delete_ok.hb")
	public ModelAndView delete_ok(HttpServletRequest request){
		String idx = request.getParameter("idx");
		dao.getDelete(idx);
		return new ModelAndView("redirect:/");
	}
}












