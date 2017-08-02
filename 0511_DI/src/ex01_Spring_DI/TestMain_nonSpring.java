package ex01_Spring_DI;

public class TestMain_nonSpring {
	public static void main(String[] args) {
		
		// 1. 생성자를 이용해서 이름과 나이을 삽입할 수 있다.
		MyProcess my1 = new MyProcess("둘리", 8);
		my1.prn();
		
		System.out.println("::::::::::::::::::::::::::::");
		// 2. setter 이용
		my1.setName("태권브이");
		my1.setAge(30);
		
		my1.prn();
	}
}
