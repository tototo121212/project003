package com.hb.mybatis;

public class IVO {
	private String idx, img, name1, name2, weight, product, content;
	
	public IVO() {}

	public IVO(String idx, String img, String name1, String name2, String weight, String product, String content) {
		super();
		this.idx = idx;
		this.img = img;
		this.name1 = name1;
		this.name2 = name2;
		this.weight = weight;
		this.product = product;
		this.content = content;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "IVO [idx=" + idx + ", img=" + img + ", name1=" + name1 + ", name2=" + name2 + ", weight=" + weight
				+ ", product=" + product + ", content=" + content + "]";
	}
	
	
}
