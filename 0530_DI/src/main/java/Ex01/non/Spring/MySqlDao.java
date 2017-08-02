package Ex01.non.Spring;

public class MySqlDao implements Dao{
	public MySqlDao() {
		System.out.println("MySqlDao 생성자");
	}
	@Override
	public void add() {
		System.out.println("MySqlDao 메소드");
	}
}
