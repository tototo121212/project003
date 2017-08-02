package ex04_Spring_DI;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class TestMain1_nonSpring {
	public static void main(String[] args) {
		List<String>list = new ArrayList<>();
		
		list.add("사과");
		list.add("배");
		list.add("바나나");
		list.add("포도");
		
		for(String k : list){
			System.out.println(k);
		}
		System.out.println(":::::::::::::::::::::");
		
		Iterator<String> it = list.iterator();
		for(int k=0; k<list.size();k++){
			System.out.println(it.next());
		}
		ListPrn lp = new ListPrn();
		lp.setList(list);
		lp.prn();
	}
}
