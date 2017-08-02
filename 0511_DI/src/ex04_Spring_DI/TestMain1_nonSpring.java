package ex04_Spring_DI;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TestMain1_nonSpring {
	public static void main(String[] args) {
		List<String> list = new ArrayList<>();
		list.add("사과");
		list.add("배");
		list.add("망고");
		list.add("오렌지");
		
		// 출력
		for (String k : list) {
			System.out.println(k);
		}
		System.out.println("::::::::::::::::::::::");
        Iterator<String> it = list.iterator();
        while(it.hasNext()){
        	String k = it.next();
        	System.out.println(k);
        }
        System.out.println("::::::::::::::::::::::");
        ListPrn lp = new ListPrn();
        lp.setList(list);
        lp.prn();
    	System.out.println("::::::::::::::::::::::");
	}
}







