package com.hb.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.CVO;
import com.hb.mybatis.DAO;
import com.hb.mybatis.IVO;
import com.hb.mybatis.PVO;
import com.hb.mybatis.PVO2;
import com.hb.mybatis.VO;
import com.hb.mybatis.pageing;
import com.hb.mybatis.pageing02;


@Controller
public class MyController {
	@Autowired
	private DAO dao;

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/start_do")
	public ModelAndView start(){
		return new ModelAndView("bar/header");
	}
	@RequestMapping("/login_do")
	public ModelAndView login_do(HttpServletRequest request){
		VO vo  = new VO();
		String id = request.getParameter("id");
		vo.setId(id);
		vo.setPwd(request.getParameter("pwd"));
		
		int res = dao.getLogin(vo);
		ModelAndView mv;
		if(res ==1){
			 mv = new ModelAndView("main/firstpage");
			 mv.addObject("id", vo.getId());
			 request.setAttribute("id", id);
		}else{
			mv = new ModelAndView("views/login");
			mv.addObject("res", res);
		}
		return mv;
	}
	@RequestMapping("/firstpage_do")
	public ModelAndView firstpage_do(){
		return new ModelAndView("main/firstpage");
	}
	@RequestMapping("/neu_go")
	public ModelAndView neu_go(){
		return new ModelAndView("views/neu_registrieren");
	}
	@RequestMapping("/intro_go")
	public ModelAndView intro_go(){
		return new ModelAndView("introdution/intro");
	}
	@RequestMapping("/find_view_go")
	public ModelAndView find_view_go(){
		return new ModelAndView("introdution/find_view");
	}
	@RequestMapping("/machine_go")
	public ModelAndView machine_go(){
		return new ModelAndView("machine_intro/machine");
	}  
	@RequestMapping("/item_list")
	public ModelAndView item_list(HttpServletRequest request){
		
		System.out.println();
		String id = (String)request.getAttribute("id");
		ModelAndView mv = new ModelAndView("items/item_page");
		List<IVO> list = dao.getItemList();
		mv.addObject("list", list);
		mv.addObject("id", id);
		return mv;
	}
	@RequestMapping("/oneitem_result")
	public ModelAndView oneitem_result(){
		return new ModelAndView("items/oneitem_page"); 
	}
	@RequestMapping("/costomer_list")
	public ModelAndView costomer_list(HttpServletRequest request){
		pageing pvo = new pageing();
			pvo.setTotalRecord(dao.getTotalCount());
			pvo.setTotalPage();
		
		String cPage =request.getParameter("cPage");
		
		if(cPage !=null){
			pvo.setNowPage(Integer.parseInt(cPage));
		}
		pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
		pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
		
		Map<String, Integer> map = new HashMap();
		map.put("begin", pvo.getBegin());
		map.put("end", pvo.getEnd());
		
		pvo.setBeginPage((int)(((pvo.getNowPage()-1)/(pvo.getPagePerBlock())*pvo.getPagePerBlock()+1)));
		pvo.setEndPage(pvo.getBeginPage()+pvo.getPagePerBlock()-1);
	
		if(pvo.getEndPage() > pvo.getTotalPage())
			pvo.setEndPage(pvo.getTotalPage());
		
		List<CVO>list = dao.getcostomer_list(map);
			
		ModelAndView mv = new ModelAndView("customers/customer_list");
		mv.addObject("c_list", list);
		mv.addObject("pvo", pvo);
		mv.addObject("cPage", cPage);
		return mv;
	}
		@RequestMapping("/one_customer_list")
		public ModelAndView one_customer_list(HttpServletRequest request, HttpServletResponse response){
			String c_idx = request.getParameter("c_idx");
			String c_Page = request.getParameter("c_Page");
			
			CVO cvo = dao.getone_customer_list(c_idx);
			
			ModelAndView mv = new ModelAndView("customers/one_customer_list");
			mv.addObject("cvo", cvo);
			mv.addObject("c_Page", c_Page);
			return mv;
		}
		@RequestMapping("/insert_go")
		public ModelAndView insert_go(){
			return new ModelAndView("customers/customer_insert");
		}
		
		@RequestMapping("/insert_confirm")
		public ModelAndView insert_confirm(HttpServletRequest request, HttpServletResponse response){
			CVO cvo = new CVO();
			cvo.setC_subject(request.getParameter("c_subject"));
			cvo.setC_brand(request.getParameter("c_brand"));
			cvo.setC_employee(request.getParameter("c_employee"));
			cvo.setC_content(request.getParameter("c_content"));
			String cPage = request.getParameter("cPage");
			System.out.println(cvo.toString());
			
			 dao.getCustomer_Insert(cvo);
			 
			 ModelAndView mv = new ModelAndView("redirect:/costomer_list");
			 mv.addObject("cPage", cPage);
			 return mv;
		}

		@RequestMapping("/update_go")
		public ModelAndView update_go(HttpServletRequest request){
			String c_idx = request.getParameter("c_idx");
			
			CVO cvo = dao.getPlusOneList(c_idx);
			
			ModelAndView mv = new ModelAndView("customers/update_list");
			mv.addObject("cvo", cvo);
			return mv;
		}
		@RequestMapping("/update_ok")
		public ModelAndView update_ok(HttpServletRequest request){
			CVO cvo = new CVO();
			cvo.setC_idx(request.getParameter("c_idx"));
			cvo.setC_subject(request.getParameter("c_subject"));
			cvo.setC_brand(request.getParameter("c_brand"));
			cvo.setC_employee(request.getParameter("c_employee"));
			cvo.setC_content(request.getParameter("c_content"));
			
			dao.getUpdate(cvo);
			
			ModelAndView mv = new ModelAndView("redirect:/one_customer_list");
			
			mv.addObject("c_idx", cvo.getC_idx());
			return mv;
		}
		@RequestMapping("/delect_go")
		public ModelAndView delect_go(HttpServletRequest request){
			String c_idx = request.getParameter("c_idx");
			
			dao.getdelect_go(c_idx);
			
			return new ModelAndView("redirect:/costomer_list");
		}
		@RequestMapping("/purchase_go")
		public ModelAndView purchase_go(HttpServletRequest request){
			ModelAndView mv= new  ModelAndView("purchase/purchase_page");
			String id = (String)request.getAttribute("id");
			mv.addObject("id", id);
			return mv;
		}
		@RequestMapping("/find_go")
		public ModelAndView find_itemList(){
			ModelAndView mv = new ModelAndView("purchase/find_itemlist");
			List<IVO> list = dao.getFind_ItemList();
			mv.addObject("list", list);
			return mv;
		}
		@RequestMapping("/purchase_all")
		public ModelAndView purchase_all(HttpServletRequest request){
			String id = request.getParameter("id");
			System.out.println(id);
			HttpSession session = request.getSession();
			List<PVO> list =(List<PVO>)session.getAttribute("list");
			
			 dao.getInsert_purchase_all(list);
			 session.removeAttribute("list");
			
			 ModelAndView mv = new ModelAndView("purchase/delivery");
			 
			 mv.addObject("id", id);
			return mv;
		}
		
		@RequestMapping("/delivery_go")
		public ModelAndView delivery_go(HttpServletRequest request){
			String id = request.getParameter("id");
			
			ModelAndView mv = new ModelAndView("purchase/delivery");
			mv.addObject("id", id);
			return mv;
		}
		
		@RequestMapping("/one_p_list")
		public ModelAndView one_p_list(HttpServletRequest request){
		
			PVO2 pvo2 = new PVO2();
			System.out.println(request.getParameter("delivery1")+","+request.getParameter("delivery2"));
			String delivery1 = request.getParameter("delivery1");
			String delivery2 = request.getParameter("delivery2");
			String p_id2 = request.getParameter("p_id2");
			
			pvo2.setDelivery1(delivery1);
			pvo2.setDelivery2(delivery2);
			pvo2.setP_id2(p_id2);
			System.out.println(pvo2.toString());
	/*		
			
			pageing02 pvo = new pageing02();
			
			pvo.setTotalRecord(dao.getTotalCount2(pvo2));
			System.out.println("값은???"+pvo.getTotalRecord());
			pvo.setTotalPage();
			
		String cPage =request.getParameter("cPage");
		
		if(cPage !=null){
			pvo.setNowPage(Integer.parseInt(cPage));
		}
		pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
		pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("delivery1",delivery1 );
		map.put("delivery2",delivery1 );
		map.put("p_id2",p_id2 );
		map.put("begin", String.valueOf(pvo.getBegin()));
		map.put("end", String.valueOf(pvo.getEnd()));
		
		pvo.setBeginPage((int)(((pvo.getNowPage()-1)/(pvo.getPagePerBlock())*pvo.getPagePerBlock()+1)));
		pvo.setEndPage(pvo.getBeginPage()+pvo.getPagePerBlock()-1);
	
		if(pvo.getEndPage() > pvo.getTotalPage())
			pvo.setEndPage(pvo.getTotalPage());
			
		List<PVO> list = dao.getOne_p_list(map);	*/
		
			List<PVO> list = dao.getOne_p_list(pvo2);
		ModelAndView mv = new ModelAndView("purchase/delivery");
		mv.addObject("list", list);
		return mv;
			
		}
		@RequestMapping("/fistpage_go")
		public ModelAndView fistpage_go(HttpServletRequest request){
			return new ModelAndView("main/firstpage"); 
		}
		@RequestMapping("/item_insert")
		public ModelAndView item_insert(HttpServletRequest request){
			String id = request.getParameter("id");
			
			ModelAndView mv = new ModelAndView("items/admin_iteminsert");
			mv.addObject("id", id);
			return mv;
		}
		@RequestMapping("/admin_item_insert_ok")
		public ModelAndView admin_item_insert_ok(HttpServletRequest request){
			IVO ivo = new IVO();
			ivo.setImg(request.getParameter("img"));
			ivo.setName1(request.getParameter("name1"));
			ivo.setName2(request.getParameter("name2"));
			ivo.setWeight(request.getParameter("weight"));
			ivo.setProduct(request.getParameter("product"));
			ivo.setContent(request.getParameter("content"));
			
			System.out.println(ivo.toString());
			dao.getAdmin_Item_Insert_Ok(ivo);
			
			return new ModelAndView("redirect:/item_list");
		}
		@RequestMapping("/admin_item_update")
		public ModelAndView admin_item_update(HttpServletRequest request){
			String idx = request.getParameter("idx");
			String id = request.getParameter("id");
			IVO ivo = dao.getAdmin_Item_Update(idx);
			
			ModelAndView mv = new ModelAndView("items/admin_itemupdate");
			mv.addObject("ivo", ivo);
			mv.addObject("id", id);
			return mv;
		}
		@RequestMapping("/admin_item_update_ok")
		public ModelAndView admin_item_update_ok(HttpServletRequest request){
			IVO ivo = new IVO();
			ivo.setIdx(request.getParameter("idx"));
			ivo.setImg(request.getParameter("img"));
			ivo.setName1(request.getParameter("name1"));
			ivo.setName2(request.getParameter("name2"));
			ivo.setWeight(request.getParameter("weight"));
			ivo.setProduct(request.getParameter("product"));
			ivo.setContent(request.getParameter("content"));
			
			String idx = request.getParameter("idx");
			String id = request.getParameter("id");
			dao.getAdmin_Item_Update_Ok(ivo);
			
			ModelAndView mv = new ModelAndView("redirect:/item_list");
			mv.addObject("idx", idx);
			mv.addObject("id", id);		
			return mv;
		}
}
