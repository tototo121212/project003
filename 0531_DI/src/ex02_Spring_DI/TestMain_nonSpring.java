package ex02_Spring_DI;

public class TestMain_nonSpring {
	public static void main(String[] args) {
		Age age = new Age();
		MyProcess my1 = new MyProcess("와플","790201",age);
		my1.prn();
		System.out.println(":::::::::::::::::::::::::::::::::");
		
		my1.setName("바바바");
		my1.setJumin("880121");
		my1.setAge(age);
		my1.prn();
	}
}
