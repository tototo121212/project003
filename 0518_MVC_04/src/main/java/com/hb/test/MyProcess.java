package com.hb.test;

import java.util.Calendar;

public class MyProcess {
	public MyProcess() {
		System.out.println("MyProcess 생성자");
	}	
	public String getGreeting(){
		int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
		if(hour>=7 && hour<=9){
			return "좋은아침";
		}else if(hour>=12 && hour<=14){
			return "점심식사 하셨습니까?";
		}else if(hour>=22 && hour<=24){
			return "내 꿈꿔";
		}else{
			return "방가방가";
		}
	}
}
