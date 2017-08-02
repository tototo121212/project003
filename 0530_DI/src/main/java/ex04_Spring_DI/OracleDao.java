package ex04_Spring_DI;

public class OracleDao implements Dao{
	public OracleDao() {
		System.out.println("OracleDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("OracleDao 메소드");
	}
}
