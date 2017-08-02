package com.hb.test;

import java.util.Calendar;

public class MyProcess {
	public MyProcess() {
		System.out.println("MyProcess 생성자");
	}
	
	public String getGreeting(){
		Calendar cal = Calendar.getInstance();
		int time = cal.get(Calendar.HOUR_OF_DAY);
		String res;
		
		if(time>=1 && time<12){
			res = "좋은 아침";
		}else if(time>13 && time<14){
			res = "점심식사 하세요~";
		}else if(time>15 && time<18){
			res = "좋은 오후";
		}else {
			res="좋은 저녁~";
		}
		
		return res;
	}
}
