package ex02_Spring_DI;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
     // Spring Container = Bean Factory 
	 // = ApplicationContext = DI Container = IoC Container 가
	 // Bean(객체) 을 생성하고 관리하고 의존성 주입까지 한다.
	 // 스프링 컨테이너 : Bean객체를 생성, 관리, 사용하는 역할을 한다.
		
	 // 1. xml 파일(설정정보)을 만들어진 ApplicationContext가 읽고 실행
	  ApplicationContext context = 	
			  new GenericXmlApplicationContext("ex02_Spring_DI/di.xml");
	  
	 // 2. 생성된 Bean객체를 얻어내서 사용
	   ServiceImp  service = (ServiceImp)context.getBean("service");
	   ServiceImp  service2 = context.getBean("service",ServiceImp.class);
	   
	   service.biz();
	   
	   
	}
}









