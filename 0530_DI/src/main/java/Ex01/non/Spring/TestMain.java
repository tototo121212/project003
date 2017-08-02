package Ex01.non.Spring;

public class TestMain {
	public static void main(String[] args) {
		// 필요할떄 해당 객체를 생성하고 호출하는 방법(non_Ioc 방식)
		OracleDao dao = new OracleDao();
		ServiceImp imp = new ServiceImp();
		// setter
		imp.setDao(dao);
		imp.biz();
		System.out.println("::::::::::::::::::");
		// 생성자
		ServiceImp imp2 = new ServiceImp(new MySqlDao());
		imp2.biz();
		System.out.println(":::::::::::::::::::::::::");
		Dao dao2 = null;
		if(false){
			dao2 = new OracleDao();
		}else{
			dao2 = new MySqlDao();
		}
		
		ServiceImp imp3 = new ServiceImp();
		imp3.setDao(dao2);
		imp3.biz();
	}
}
