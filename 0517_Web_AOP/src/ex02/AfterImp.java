package ex02;

public class AfterImp implements After{

	@Override
	public void after() {
		System.out.println("잠을 잔다.");
		System.out.println("문을 열고 집을 나온다.");
	}

}
