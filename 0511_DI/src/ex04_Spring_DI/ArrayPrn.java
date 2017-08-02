package ex04_Spring_DI;

public class ArrayPrn {
	private String[] arr;
	private Integer[] arr2 ;
	
	public void prn1(){
		for(String k : arr){
			System.out.println(k+10);
		}
	}
	public void prn2(){
		for(Integer k : arr2){
			System.out.println(k+10);
		}
	}
	public String[] getArr() {
		return arr;
	}
	public void setArr(String[] arr) {
		this.arr = arr;
	}
	public Integer[] getArr2() {
		return arr2;
	}
	public void setArr2(Integer[] arr2) {
		this.arr2 = arr2;
	}
	
	
}
