package ex02_Spring_DI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

public class MyProcess {
	private String name;
	private String jumin;
	
	//객체 참조 자료형 // 객체 참조 변수,
	@Autowired
	private Age age;
    
	public void prn(){
	  int res = age.count(jumin);
	  System.out.println("이름 : " + name);
	  System.out.println("나이 : " + res);
	}
	public MyProcess() {}
	public MyProcess(String name, String jumin, Age age) {
		this.name = name;
		this.jumin = jumin;
		this.age = age;
	}
	public MyProcess(String name, String jumin) {
		super();
		this.name = name;
		this.jumin = jumin;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJumin() {
		return jumin;
	}

	public void setJumin(String jumin) {
		this.jumin = jumin;
	}

	public Age getAge() {
		return age;
	}

	public void setAge(Age age) {
		this.age = age;
	}
}
