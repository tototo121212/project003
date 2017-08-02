package ex04_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain_Spring {
	public static void main(String[] args) {
		ApplicationContext context = 
				new GenericXmlApplicationContext("ex04_Spring_DI/di.xml");
		ListPrn lp = (ListPrn)context.getBean("lp");
		lp.prn();
		System.out.println(":::::::::::list:::::::::");
		lp.prn2();
		System.out.println(":::::::::::::::::::::::::::::");
		ArrayPrn ap = (ArrayPrn)context.getBean("ap");
		ap.prn();
		System.out.println("::::::::::배열::::::::::::::");
		ap.prn2();
		System.out.println("::::::::::::::::::::::::::::::::::::");
		SetPrn sp = (SetPrn)context.getBean("sp");
		sp.prn();
		System.out.println(":::::::::Set:::::::::::::::");
		sp.prn2();
		System.out.println("::::::::::::::::::::::::::::::");
		MapPrn mp = (MapPrn)context.getBean("mp");
		mp.prn();
		System.out.println("::::::::Map:::::::::::::::");
		mp.prn2();
	}
}
