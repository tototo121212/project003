package ex05_Spring_DI;

import org.springframework.stereotype.Repository;

@Repository("dao")
public class OracleDao implements Dao{
	public OracleDao() {
		System.out.println("OracleDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("OracleDao 메소드");
	}
}
