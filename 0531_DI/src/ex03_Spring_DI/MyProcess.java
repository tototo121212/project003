package ex03_Spring_DI;

public class MyProcess {
	private String p_name;
	private int su,dan;
	private MyProduct myProduct;
	
	public void prn(){
		int total = myProduct.count(su, dan);
		System.out.println("상품명 : "+p_name);
		System.out.println("상품갯수 : "+su);
		System.out.println("상품단가"+ dan);
		System.out.println("총금액 :"+total);
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getSu() {
		return su;
	}

	public void setSu(int su) {
		this.su = su;
	}

	public int getDan() {
		return dan;
	}

	public void setDan(int dan) {
		this.dan = dan;
	}

	public MyProduct getMyProduct() {
		return myProduct;
	}

	public void setMyProduct(MyProduct myProduct) {
		this.myProduct = myProduct;
	}

	
	
}
