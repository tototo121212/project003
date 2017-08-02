package ex03_Spring_DI;

public class OracleDao implements Dao{

	public OracleDao() {
		System.out.println("OracleDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("OracleDao 메소드");
	}

}
