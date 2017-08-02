package ex04_Spring_DI;

import java.util.List;

public class ListPrn {
	private List<String> list;
	private List<Integer> list2;
	
	public void prn(){
		for(String k : list){
			System.out.println(k+10);
		}
	}	
	public void prn2(){
		for(Integer k : list2){
			System.out.println(k+10);
		}
	}
	public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list = list;
	}
	public List<Integer> getList2() {
		return list2;
	}
	public void setList2(List<Integer> list2) {
		this.list2 = list2;
	}
	
	
}
