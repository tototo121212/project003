package com.hb.mybatis;

public class PVO {
	private String p_idx,id,p_img,p_item1,p_item2, p_color, p_yd,p_price, p_delivery, p_tran_way, p_day;

	public String getP_idx() {
		return p_idx;
	}

	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_item1() {
		return p_item1;
	}

	public void setP_item1(String p_item1) {
		this.p_item1 = p_item1;
	}

	public String getP_item2() {
		return p_item2;
	}

	public void setP_item2(String p_item2) {
		this.p_item2 = p_item2;
	}

	public String getP_color() {
		return p_color;
	}

	public void setP_color(String p_color) {
		this.p_color = p_color;
	}

	public String getP_yd() {
		return p_yd;
	}

	public void setP_yd(String p_yd) {
		this.p_yd = p_yd;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_delivery() {
		return p_delivery;
	}

	public void setP_delivery(String p_delivery) {
		this.p_delivery = p_delivery;
	}

	public String getP_tran_way() {
		return p_tran_way;
	}

	public void setP_tran_way(String p_tran_way) {
		this.p_tran_way = p_tran_way;
	}

	public String getP_day() {
		return p_day;
	}

	public void setP_day(String p_day) {
		this.p_day = p_day;
	}

	@Override
	public String toString() {
		return "PVO [p_idx=" + p_idx + ", id=" + id + ", p_img=" + p_img + ", p_item1=" + p_item1 + ", p_item2="
				+ p_item2 + ", p_color=" + p_color + ", p_yd=" + p_yd + ", p_price=" + p_price + ", p_delivery="
				+ p_delivery + ", p_tran_way=" + p_tran_way + ", p_day=" + p_day + "]";
	}

	
}
