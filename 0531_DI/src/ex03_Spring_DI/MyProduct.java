package ex03_Spring_DI;

public class MyProduct {
	public int count(int su, int dan){	
		double vat = (dan*su)*0.1;
		int total = (dan*su)+(int)vat;
		return total;
	}
}
