package ex01;

public class TestMain {
	public static void main(String[] args) {
		Person boy = new Boy();
		Person girl = new Girl();
		PersonProxy proxy = new PersonProxy();
		
		proxy.setPerson(boy);
		proxy.doSomting();
	}
}
