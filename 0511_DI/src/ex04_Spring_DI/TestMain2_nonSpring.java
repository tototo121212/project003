package ex04_Spring_DI;

public class TestMain2_nonSpring {
	public static void main(String[] args) {
		String[]  arr = {"삼장법사","손오공","저팔계","사오정"};
		for (String k : arr) {
			System.out.println(k);
		}
		System.out.println(":::::::::");
		ArrayPrn ap = new ArrayPrn();
		ap.setArr(arr);
		ap.prn1();
	}
}
