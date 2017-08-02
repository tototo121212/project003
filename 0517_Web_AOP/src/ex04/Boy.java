package ex04;

import org.springframework.stereotype.Service;

@Service("play")
public class Boy implements Person{
	// 남자 (구현 가능한 advice의 종류)
	// - 문을 열고 집에 들어온다		<= 공통 관심 사항(before)
	// - 컴퓨터로 게임을 한다			<= 핵심 관심 사항
	// - 잠을 잔다					<= 공통 관심 사항(after)
	// - 문을 열고 집을 나온다			<= 공통 관심 사항(after)
	// - 화재 발생 : 119에 신고한다	<= 예외 발생
	@Override
	public void doSomething() {
		System.out.println("컴퓨터로 게임을 한다");
	}
}
