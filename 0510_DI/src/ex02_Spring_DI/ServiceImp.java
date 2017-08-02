package ex02_Spring_DI;

public class ServiceImp {
	 // 객체참조자료형 // 객체 참조 변수
	private Dao dao ;
	
	// 생성자
	public ServiceImp() {}
	public ServiceImp(Dao dao) {
		this.dao = dao;
	}
	// getter/setter
	public Dao getDao() {
		return dao;
	}
	public void setDao(Dao dao) {
		this.dao = dao;
	}

	// 비즈니스 로직
	public void biz(){
		// 생성자나 setter에서 들어온
		// MySqlDao 또는 OracleDao에 존재하는 add()가 실행된다.
		dao.add();
	}
}
