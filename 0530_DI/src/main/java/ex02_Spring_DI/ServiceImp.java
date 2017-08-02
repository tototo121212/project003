package ex02_Spring_DI;

public class ServiceImp {
	private Dao dao;
	
	public ServiceImp() {}
	public ServiceImp(Dao dao) {
		this.dao = dao;
	}
	public Dao getdao(){
		return dao;
	}
	public void setDao(Dao dao){
		this.dao = dao;
	}
	
	public void biz(){
		dao.add();
	}
}
