package ex04_Spring_DI;

import java.util.Set;

public class SetPrn {
	private Set<String> set;
	private Set<Integer> set2;
	
	public void prn1(){
		for (String k : set) {
			System.out.println(k+10);
		}
	}
	public void prn2(){
		for (Integer k : set2) {
			System.out.println(k+10);
		}
	}
	public Set<String> getSet() {
		return set;
	}
	public void setSet(Set<String> set) {
		this.set = set;
	}
	public Set<Integer> getSet2() {
		return set2;
	}
	public void setSet2(Set<Integer> set2) {
		this.set2 = set2;
	}
	
}
