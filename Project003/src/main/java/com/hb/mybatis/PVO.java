package com.hb.mybatis;

public class PVO {
	private String p_idx, p_item, p_color, p_yd, p_delivery, p_tran_way, p_day;
	private String p_id;
	
	
	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_idx() {
		return p_idx;
	}

	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}

	public String getP_item() {
		return p_item;
	}

	public void setP_item(String p_item) {
		this.p_item = p_item;
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
		return "PVO [p_idx=" + p_idx + ", p_item=" + p_item + ", p_color=" + p_color + ", p_yd=" + p_yd
				+ ", p_delivery=" + p_delivery + ", p_tran_way=" + p_tran_way + ", p_day=" + p_day + ", p_id=" + p_id
				+ "]";
	}

}
