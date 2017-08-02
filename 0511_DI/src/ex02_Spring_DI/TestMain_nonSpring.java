package ex02_Spring_DI;

public class TestMain_nonSpring {
	public static void main(String[] args) {
		MyProcess my = new MyProcess();
		Age age = new Age();
		my.setName("홍길동");
		my.setJumin("901212");
		my.setAge(age);
		my.prn();
		System.out.println("::::::::::::::::");
		
		Age age2 = new Age();
		MyProcess my2 = new MyProcess("임꺽정", "881212", age2);
		my2.prn();
	}
}
