package Ex01.non.Spring;

public class ServiceImp {
	private Dao dao;
	
	public ServiceImp() {}
	public ServiceImp(Dao dao) {
		this.dao = dao;
	}
	// getter/setter
	public Dao getDao(){
		return dao;
	}
	public void setDao(Dao dao) {
		this.dao = dao;
	}
	// 비지니스 로직
	public void biz(){
		// 생성자나 setter에서 들어옴
		// MySqlDao 또는 OracleDao에 존재하는 add()가 실행된다.
		dao.add();
	}
}
