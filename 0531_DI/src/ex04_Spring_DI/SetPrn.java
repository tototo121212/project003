package ex04_Spring_DI;

import java.util.HashSet;
import java.util.Set;

public class SetPrn {
	private Set<String>set1;
	private Set<Integer>set2;
	
	public void prn(){
		for(String k : set1){
			System.out.println(k+10);
		}
	}	
	public void prn2(){
		for(Integer k : set2){
			System.out.println(k+10);
		}	
	}
	public Set<String> getSet1() {
		return set1;
	}
	public void setSet1(Set<String> set1) {
		this.set1 = set1;
	}
	public Set<Integer> getSet2() {
		return set2;
	}
	public void setSet2(Set<Integer> set2) {
		this.set2 = set2;
	}
	
	
}
