package ex03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		ApplicationContext context =
				new GenericXmlApplicationContext("ex03/aop.xml");
		Person person = (Person)context.getBean("girl");
		person.something();
	}
}
