package com.smd.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class h {

	public static void main(String[] args) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
		LocalDateTime now = LocalDateTime.now();
		String date = dtf.format(now);
		System.out.println(date); 
	}
}
