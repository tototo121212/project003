package com.hb.mybatis;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class DAO {
	private SqlSessionTemplate template;
	public SqlSessionTemplate getTemplate() {
		return template;
	}
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public int getTotalCount(){
		return template.selectOne("totalCount");
	}
	/*public int getTotalCount2(PVO2 pvo2){
		return template.selectOne("totalCount2",pvo2);
	}*/
	
	
	public int getLogin(VO vo){
		VO vo2 =  template.selectOne("login", vo);
		int res = 1;
		if(vo2 == null || vo2.getId().equals("")){
			res = 2;
		}
		return res;
	}
	public List<VO> getIdCheak(String id){
		 return template.selectList("idchk",id);
	}
	
	public int getNeu_Insert(VO vo){
		int res = template.insert("neu_insert", vo);
		return res;
	}
	public List<IVO> getItemList(){
		List<IVO> list = template.selectList("item_list");
		
		return list;
	}
	
	public IVO getOneItem_List(String idx){
		IVO ivo = template.selectOne("oneitem", idx);
		System.out.println(ivo.toString()+"dao ivo");
		return ivo;
	}
	
	public List<CVO> getcostomer_list(Map<String, Integer> map){
		List<CVO>list = template.selectList("costomerlist",map);
		
		return list;
	}
	
	public CVO getone_customer_list(String c_idx){
		CVO cvo =template.selectOne("onecustomerlist",c_idx);
		
		return cvo;
	}
	public void getCustomer_Insert(CVO cvo){
		 template.insert("customerinsert", cvo);
	}
	
	public CVO getPlusOneList(String c_idx){
		CVO cvo = template.selectOne("getplusonelist", c_idx);
		
		return cvo;
	}
	public void getUpdate(CVO cvo){
		template.update("customerupdate",cvo);
	}
	public void getdelect_go(String c_idx){
		template.delete("customerdelect", c_idx);
	}
	
	public List<IVO> getFind_ItemList(){
		List<IVO> list = template.selectList("finditemlist");
		
		return list;
	}
	
	public void getInsert_purchase_all(List<PVO> list){
		for (PVO pvo : list) {
			template.insert("purchaseinsert", pvo);
		}
	}
	
	/*public List<PVO> getOne_p_list(Map<String, String> map){
		List<PVO> list = template.selectList("one_p_list", map);
		
		return list;
	}*/
	public List<PVO> getOne_p_list(PVO2 pvo2){
		List<PVO> list = template.selectList("one_p_list", pvo2);
		
		return list;
	}
	public void getAdmin_Item_Insert_Ok(IVO ivo){
		template.insert("admin_item_insert", ivo);
	}
	public IVO getAdmin_Item_Update(String idx){
		IVO ivo = template.selectOne("admin_item_update", idx);
		return ivo;
	}
	public void getAdmin_Item_Update_Ok(IVO ivo){
		template.update("admin_item_update_ok", ivo);
	}
	
	public int getInsert_Item_Page(PVO pvo){
		int res = template.insert("insert_item_page",pvo);
		
		return res;
	}
}
