package ex04_Spring_DI;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class TestMain4_nonSpring {
	public static void main(String[] args) {
		Map<Integer, String> map = new HashMap<>();
		map.put(0, "삼장법사");
		map.put(1, "손오공");
		map.put(2, "저팔계");
		map.put(3, "사오정");
		
		Map<String, String> map2 = new HashMap<>();
		map2.put("이수근", "삼장법사");
		map2.put("은지원", "손오공");
		map2.put("강호동", "저팔계");
		map2.put("이승기", "사오정");
		
		// map은 키가 Integer이므로 일반 for문 사용
		 for (int i = 0; i < map.size(); i++) {
			System.out.println(map.get(i));
		}
		 System.out.println("::::::::::::::::::::::::::::::::::");
	    // map2은 키가 String이므로 for문 사용 못함,
		// 전통적으로 map방식은 key만를 set에 넣어서 관리 
		 Iterator<String> it = map2.keySet().iterator();
		 while(it.hasNext()){
			 String k = it.next();
			 System.out.println(map2.get(k));
		 }
		 
	}
}














