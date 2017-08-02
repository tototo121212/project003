package com.hb.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;
import com.hb.mybatis.Pageing;
import com.hb.mybatis.VO;

@Controller
public class MyController {
	@Autowired
	private DAO dao;
	@Autowired
	private Pageing pageing;
	
	
	public DAO getDao() {
		return dao;
	}
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	public Pageing getPageing() {
		return pageing;
	}
	public void setPageing(Pageing pageing) {
		this.pageing = pageing;
	}
	//model
	@RequestMapping("/list.hb")
	public ModelAndView getList(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("list");
		String cPage = request.getParameter("cPage");
		if(cPage != null) pageing.setNowPage(Integer.parseInt(cPage));
		
		pageing.setTotalRecord(dao.getTotalCount());
		pageing.setTotalPage();
		
		pageing.setBegin((pageing.getNowPage()-1)*pageing.getNumPerPage()+1);
		pageing.setEnd((pageing.getBegin()-1)+pageing.getNumPerPage());
		
		pageing.setBeginPage((int)(((pageing.getNowPage()-1)/pageing.getPagePerBlock())*pageing.getPagePerBlock()+1));
		pageing.setEnd(pageing.getBeginPage()+pageing.getPagePerBlock()-1);
		
		if(pageing.getEndPage() > pageing.getTotalPage()){
			pageing.setEndPage(pageing.getTotalPage());
		}
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", pageing.getBegin());
		map.put("end", pageing.getEnd());
		
		List<VO> list = dao.getList(map);
		mv.addObject("list", list);
		mv.addObject("pvo", pageing);
		mv.addObject("cpage", pageing.getNowPage());
		
		return mv;
	}
}
