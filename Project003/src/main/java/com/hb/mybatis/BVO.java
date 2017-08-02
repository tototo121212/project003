package com.hb.mybatis;

public class BVO {
	private String idx, b_img, b_name, link;

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getB_img() {
		return b_img;
	}

	public void setB_img(String b_img) {
		this.b_img = b_img;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	@Override
	public String toString() {
		return "BVO [idx=" + idx + ", b_img=" + b_img + ", b_name=" + b_name + ", link=" + link + "]";
	}
}
