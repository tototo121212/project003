package ex04_Spring_DI;

import java.util.Iterator;
import java.util.Map;

public class MapPrn {
	private Map<Integer,String> map1;
	private Map<String,String> map2;
	
	public void prn1(){
		 Iterator<Integer> it = map1.keySet().iterator();
		 while(it.hasNext()){
			int k = it.next();
			 System.out.println(map1.get(k));
		 }
	}
	public void prn2(){
		 Iterator<String> it = map2.keySet().iterator();
		 while(it.hasNext()){
			String k = it.next();
			 System.out.println(map2.get(k));
		 }
	}
	
	public Map<Integer, String> getMap1() {
		return map1;
	}
	public void setMap1(Map<Integer, String> map1) {
		this.map1 = map1;
	}
	public Map<String, String> getMap2() {
		return map2;
	}
	public void setMap2(Map<String, String> map2) {
		this.map2 = map2;
	}
	
	
}
