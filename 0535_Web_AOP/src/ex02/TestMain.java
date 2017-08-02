package ex02;

public class TestMain {
	public static void main(String[] args) {
		Person boy = new Boy();
		Person girl = new Girl();
		PersonProxy personProxy =new PersonProxy();
		
		personProxy.setBefore(new BeforeImp());
		personProxy.setAfter(new AfterImp());
		
		personProxy.setPerson(boy);
		personProxy.dossometing();
	}
}
