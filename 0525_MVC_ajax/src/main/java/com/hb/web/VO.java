package com.hb.web;

public class VO {
	private int no ;
	private String name ;
	private int age ;
	
	@Override
	public String toString() {
		return "번호 : "+ no + ", 이름 : "+ name + ", 나이 : "+ age ; 
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
