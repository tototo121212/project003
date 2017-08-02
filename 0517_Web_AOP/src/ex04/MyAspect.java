package ex04;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyAspect {
	// advice
	// Before advice : joinpoint 전에 수행되는 advice
	// After returning advice : 성공적으로 리턴된 후 동작
	// After throwing advice : 예외처리가 발생하면 동작
	// After advice : 성공적이거나 예외적이어도 반드시 실행(finally)
	// Around advice : 전, 후에 수행되는 advice

	@Pointcut("execution(* doSom*())")
	public void myPointCut(){}
	
	@Before("myPointCut()")
	public void before(){
		System.out.println("문을 열고 집에 들어온다");
	}
	@After("myPointCut()")
	public void after(){
		System.out.println("문을 열고 집을 나온다");
	}
	@AfterReturning("myPointCut()")
	public void after_returning(){
		System.out.println("잠을 잔다");
	}
	@AfterThrowing("myPointCut()")
	public void after_throwing(){
		System.out.println("화재 발생 : 119에 신고");
	}
	public void around(){
		System.out.println("뭐야 이건?");
	}
}
