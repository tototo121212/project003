package ex03;

public class MyAspect {

	
	public void before(){
		System.out.println("문을 열고 집을 들어간다.");
	}
	public void after(){
		System.out.println("문 열고 집을 나온다.");
	}
	public void after_retruning(){
		System.out.println("잠을 잔다.");
	}
	public void after_throwing(){
		System.out.println("119에 신고한다.");
	}
	public void around(){
		System.out.println("뭐야 이건");
	}
}
