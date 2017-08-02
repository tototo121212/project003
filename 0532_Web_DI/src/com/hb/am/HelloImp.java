package com.hb.am;

public class HelloImp implements Hello{
	public HelloImp() {
		System.out.println("HelloImp 생성자");
	}

	@Override
	public String sayHello() {
		return "Hello 오홍";
	}
	
}
