package ex04_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain_Spring {
	public static void main(String[] args) {
		ApplicationContext context =
				new GenericXmlApplicationContext("ex04_Spring_DI/di.xml");
		ListPrn lp = (ListPrn)context.getBean("list");
		lp.prn();
		System.out.println("::::list:::::::");
		lp.prn2();
		System.out.println(":::::::::::");
		ArrayPrn ap = (ArrayPrn)context.getBean("list2");
		ap.prn1();
		System.out.println(":::::Array::::::");
		ap.prn2();
		System.out.println(":::::::::::");
		SetPrn sp = (SetPrn)context.getBean("set");
		sp.prn1();
		System.out.println("::::set:::::::");
		sp.prn2();
		System.out.println(":::::::::::");
		MapPrn mp = (MapPrn)context.getBean("map");
		mp.prn1();
		System.out.println(":::::map::::::");
		mp.prn2();
		
	}
}
