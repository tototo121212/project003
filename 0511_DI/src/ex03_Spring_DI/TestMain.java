package ex03_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		ApplicationContext context = 
				new GenericXmlApplicationContext("ex03_Spring_DI/di.xml");
		MyProcess myProcess = (MyProcess)context.getBean("myProcess");
		myProcess.prn();
	}
}
