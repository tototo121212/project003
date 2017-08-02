package ex04_Spring_DI;

import java.util.Iterator;
import java.util.Map;

public class MapPrn {
	Map<Integer,String>map;
	Map<String, String>map2;
	
	public void prn(){
		Iterator<Integer>it = map.keySet().iterator();
		
		while(it.hasNext()){
			int k = it.next();
			System.out.println(map.get(k));
		}
	}
	public void prn2(){
		Iterator<String>it = map2.keySet().iterator();
		while(it.hasNext()){
			String k = it.next();
			System.out.println(map2.get(k));
		}
	}
	public Map<Integer, String> getMap() {
		return map;
	}
	public void setMap(Map<Integer, String> map) {
		this.map = map;
	}
	public Map<String, String> getMap2() {
		return map2;
	}
	public void setMap2(Map<String, String> map2) {
		this.map2 = map2;
	} 
	
}
