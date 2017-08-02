package ex01_Spring_DI;

public class TestMain_nonSpring {
	public static void main(String[] main){
		MyProcess my1= new MyProcess();
		my1.setName("바밤바");
		my1.setAge(50);
		my1.prn();
		
		System.out.println("::::::::::::::::::::::");
		MyProcess my2 = new MyProcess("열심히하자", 24);
		my2.prn();
	}
}
