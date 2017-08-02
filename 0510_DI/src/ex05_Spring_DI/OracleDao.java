package ex05_Spring_DI;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

// @Component("dao")
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
