package ex01;

public class TestMain {
	public static void main(String[] args) {
		Person boy = new Boy();
		Person gril = new Girl();
		PersonProxy proxy = new PersonProxy();
		
		// proxy.setPerson(boy);
		   proxy.setPerson(gril);
		proxy.doSomting();
		
	}
}
