package ex04_Spring_DI;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class TestMain3_nonSpring {
	public static void main(String[] args) {
		Set<String> set = new HashSet<>();
		set.add("java");
		set.add("jsp");
		set.add("spring");
		set.add("android");
		
		for (String k : set) {
			System.out.println(k);
		}
		System.out.println(":::::::::::::::");
		Iterator<String> it = set.iterator();
		while(it.hasNext()){
			String k = it.next();
			System.out.println(k);
		}
		System.out.println(":::::::::::::::");
	}
}
