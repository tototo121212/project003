package ex03;

public class MyAspect {
	//  advice 
	// Before advice : joinpoint 전에 수행되는 advice
	// After returning advice : 성공적으로 리턴 된 후에 동작
	// After throwing advice : 예외처리가 발생하면 동작
	// After advice (finally) : 성공적이거나 예외적이어도 반드시 실행
	// Around advice : 전, 후에 수행되는 advice
	
	public void before(){
		System.out.println("문을 열고 집에 들어간다.");
	}
   public void after(){
	   System.out.println("문 열고 집에 나온다.");
   }
   public void after_returning(){
	   System.out.println("잠을 잔다.");
   }
   public void after_throwing(){
	   System.out.println("119에 신고한다.");
   }
   public void around(){
	   System.out.println("뭐야 이건?");
   }
}





