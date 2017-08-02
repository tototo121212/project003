package ex02_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args){
		ApplicationContext context = 
				new GenericXmlApplicationContext("ex02_Spring_DI/di.xml");
		
		ServiceImp service = (ServiceImp)context.getBean("service");
		ServiceImp service2 = context.getBean("service",ServiceImp.class);
		
		service.biz();
	}
}
