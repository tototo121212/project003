package ex01;

public class Girl implements Person{
	//여자 (구현 가능한 어드바이스 종류)
	// -문을 열고 집에 들어온다. => 공통관심사항 before
	// -컴퓨터로 쇼핑을 한다. =>행심관심 사항
	// -잠을 잔다 => 공통관심사항 after
	// -문을 열고 집을 나온다.
	// -화재발생 : 119에 신고한다. => 공통관심사항(예외발생)
	@Override
	public void doSomting() {
		System.out.println("컴퓨터로 쇼핑을 한다.");
	}
}
