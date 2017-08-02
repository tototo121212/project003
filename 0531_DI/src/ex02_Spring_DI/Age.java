package ex02_Spring_DI;

import java.util.Calendar;

import org.springframework.stereotype.Repository;

@Repository("age")
public class Age {
	public int count(String jumin){
		int res = 0;
		Calendar cal = Calendar.getInstance();
		int n_year = cal.get(Calendar.YEAR);
		int o_year = Integer.parseInt(jumin.substring(0,2))+1900;
		res = (n_year-o_year)+1;
		return res;
	}
}
