package com.hb.mybatis;

public class PVO2 {
	private String p_id2, delivery1,delivery2;

	public String getP_id2() {
		return p_id2;
	}

	public void setP_id2(String p_id2) {
		this.p_id2 = p_id2;
	}

	public String getDelivery1() {
		return delivery1;
	}

	public void setDelivery1(String delivery1) {
		this.delivery1 = delivery1;
	}

	public String getDelivery2() {
		return delivery2;
	}

	public void setDelivery2(String delivery2) {
		this.delivery2 = delivery2;
	}

	@Override
	public String toString() {
		return "PVO2 [p_id2=" + p_id2 + ", delivery1=" + delivery1 + ", delivery2=" + delivery2 + "]";
	}
	
	
}
