package com.hb.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;
import com.hb.mybatis.IVO;
import com.hb.mybatis.PVO;
import com.hb.mybatis.VO;

@RestController
@RequestMapping("/Ajax")
public class AjaxContoller {
	@Autowired
	private DAO dao;

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	@RequestMapping("/idchk_do")
	public String idck_go(HttpServletRequest request, HttpServletResponse response){
		String id = request.getParameter("id");
		System.out.println("id온것입니다."+id);
		String result = "";
		
		if(dao.getIdCheak(id).size()==0){
			result = "y";
		}else{
			result = "n";
		}
		 				
		return result;
	}
	@RequestMapping("/neu_insert")
	public String neu_insert(HttpServletRequest request,HttpServletResponse response){
		VO vo = new VO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setName(request.getParameter("name"));
		vo.setCompany(request.getParameter("company"));
		vo.setPone(request.getParameter("pone"));
		System.out.println(vo.toString());
		
		String result = "";
		
		if(dao.getNeu_Insert(vo)==1){
			result = "y";
		}else{
			result = "n";
		}				
		return result;
	}
	@RequestMapping("/item_onelist")
	public String getitem_onelist(HttpServletRequest request){
		String idx = request.getParameter("idx");
		String id = request.getParameter("id");
		System.out.println(idx);
		System.out.println(id);
		IVO ivo = dao.getOneItem_List(idx);
		
		System.out.println(ivo.toString());
		HttpSession session = request.getSession();
		session.setAttribute("ivo", ivo);
		session.setAttribute("id", id);
		return "";
	}
	
	@RequestMapping("/find_item_name")
	public String getFind_Item_Name(HttpServletRequest request){
		String p_item2 = request.getParameter("p_item");
		HttpSession session = request.getSession();
		session.setAttribute("p_item2", p_item2);
		return "";
	}
	@RequestMapping("/item_page")
	public String getItem_page(HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();
		PVO pvo = new PVO();
		pvo.setP_item(request.getParameter("p_item"));
		pvo.setP_color(request.getParameter("p_color"));
		pvo.setP_yd(request.getParameter("p_yd"));
		pvo.setP_delivery(request.getParameter("p_delivery"));
		pvo.setP_tran_way(request.getParameter("p_tran_way"));
		pvo.setP_id(request.getParameter("p_id"));
		
		String p_id = request.getParameter("p_id");
		System.out.println(pvo.toString());
		List<PVO> list = new ArrayList();
		if(session.getAttribute("list") != null){
			list = (List<PVO>)session.getAttribute("list");
		}
		list.add(pvo);		
		
		session.removeAttribute("list");
		session.removeAttribute("p_item2");
		session.setAttribute("list", list);
		session.setAttribute("p_id", p_id);
		
		return "";
	}
	@RequestMapping("/item_sub_page")
	public String getitem_sub_page(HttpServletRequest request){
		String itemsub = request.getParameter("itemsub");
		System.out.println(itemsub);
		HttpSession session = request.getSession();
		List<PVO> list = (List<PVO>)session.getAttribute("list");
		int res = (Integer.parseInt(itemsub))-1;
		if(res<0){
			list.remove(0);
		}else{
			list.remove(res);
		}
		return itemsub;
		
	}
}