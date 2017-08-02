package ex04_Spring_DI;

import org.springframework.beans.factory.annotation.Autowired;

public class ServiceImp {
	
	@Autowired
	private Dao dao;
	
	public ServiceImp(){}
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
