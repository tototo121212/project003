package ex04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Test_main {
	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext("ex04/aop.xml");
		Person person = (Person)context.getBean("play");
		person.doSomething();
	}
}
