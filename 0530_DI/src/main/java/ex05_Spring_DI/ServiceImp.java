package ex05_Spring_DI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("aoaoao")
public class ServiceImp {
	@Autowired
	private Dao dao;
	
	public ServiceImp() {}
	public ServiceImp(Dao dao) {
		this.dao = dao;
	}
	
	public Dao getdao(){
		return dao;
	}
	public void setdao(Dao dao){
		this.dao = dao;
	}

	public void biz(){
		dao.add();
	}
}
