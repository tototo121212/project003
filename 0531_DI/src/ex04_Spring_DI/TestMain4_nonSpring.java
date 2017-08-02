package ex04_Spring_DI;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class TestMain4_nonSpring {
	public static void main(String[] args) {
		Map<Integer, String>map = new HashMap<>();
		map.put(0, "삼장법사");
		map.put(1, "손오공");
		map.put(2, "저팔계");
		map.put(3, "사오정");
	
		Iterator<Integer>it = map.keySet().iterator();
		while(it.hasNext()){
			int k = it.next();
			System.out.println(map.get(k));
		}
		System.out.println("::::::::::::::::::::::::::::::::");
		for(int k =0 ; k<map.size();k++){
			System.out.println(map.get(k));
		}
		System.out.println(":::::::::::::::::::::::::::::");
		Map<String, String>map2 = new HashMap<>();
		map2.put("이수근", "삼장법사1");
		map2.put("은지원", "손오공1");
		map2.put("강호동", "저팔계1");
		map2.put("이민호", "사오정1");
		
		Iterator<String> it2 = map2.keySet().iterator();
		
		while(it2.hasNext()){
			String k = it2.next();
			System.out.println(map2.get(k));
		}
	}
}
