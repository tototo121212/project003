package ex01_non_Spring;

public class OracleDao implements Dao{

	public OracleDao() {
		System.out.println("OracleDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("OracleDao 메소드");
	}

}
