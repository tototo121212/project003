package ex05_Spring_DI;

import org.springframework.stereotype.Repository;

@Repository("Dao1")
public class MySqlDao implements Dao{
	public MySqlDao() {
		System.out.println("MySqlDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("MySqlDao 메소드");
	}
}
