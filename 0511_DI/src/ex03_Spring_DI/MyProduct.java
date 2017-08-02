package ex03_Spring_DI;

public class MyProduct {
	public int total(int su, int dan){
		double vat = su * dan * 0.1 ;
		int total = (su * dan) + (int)vat;
		return total;
	}
}
