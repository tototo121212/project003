package ex02_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain_Spring {
	public static void main(String[] args) {
		ApplicationContext context =
				new GenericXmlApplicationContext("ex02_Spring_DI/di.xml");
		MyProcess my = (MyProcess)context.getBean("my");
		 MyProcess my2 = (MyProcess)context.getBean("my2");
		my.prn();
		System.out.println(":::::::::::");
		 my2.prn();
	}
}
