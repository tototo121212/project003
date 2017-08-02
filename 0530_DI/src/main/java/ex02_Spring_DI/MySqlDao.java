package ex02_Spring_DI;

public class MySqlDao implements Dao{
	public MySqlDao() {
		System.out.println("MySqlDao 클래스");
	}
	@Override
	public void add() {
		System.out.println("MySqlDao 메소드");
	}
}
