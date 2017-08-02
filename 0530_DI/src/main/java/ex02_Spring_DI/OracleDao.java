package ex02_Spring_DI;

public class OracleDao implements Dao{
	public OracleDao() {
		System.out.println("OracleDao 클래스");
	}
	@Override
	public void add() {
		System.out.println("OracleDao 메소드");
	}
}
