package com.hb.am;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloTest {
	public static void main(String[] args) {
		ApplicationContext context = 
				new GenericXmlApplicationContext("com/hb/am/di.xml");
		HelloImp hi = (HelloImp)context.getBean("hi");
		String msg = hi.sayHello();
		System.out.println("msg : "+msg);
	}
}
