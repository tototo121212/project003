package ex02;

public class TestMain {
	public static void main(String[] args) {
		Person boy = new Boy();
		Person gril = new Girl();
		PersonProxy proxy = new PersonProxy();
		

		proxy.setBefore(new BeforeImp());
		proxy.setAfter(new AfterImp());
		
		proxy.setPerson(boy);
		proxy.doSomting();
		
	}
}
