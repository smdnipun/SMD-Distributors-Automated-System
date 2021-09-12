package com.smd.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.SplittableRandom;

public class Services {
	public static void main (String[] args) {
		System.out.println(Services.doHashing("admin8"));
	}
	
	//implementing password Hashing
	public String doHashing (String password) {
		try {
			//create instance of MessageDigest
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			
			//update password to byte
			messageDigest.update(password.getBytes());
			
			//getting hash value of the password
			byte[] resultByteArray = messageDigest.digest();
			
			//converting byte array to String
			StringBuilder sb = new StringBuilder();
			for(byte b : resultByteArray) {
				sb.append(String.format("%02x", b));
		}
			
		//returning the hash code of the password
		return sb.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//Generating an OTP 
	public static String generateOtp (int otpLength) {
		//creating an instance of SplittableRandom class
		SplittableRandom spRandom = new SplittableRandom();
		
		StringBuilder sb = new StringBuilder();
		
		for(int i=0; i < otpLength; i++) {
			sb.append(spRandom.nextInt(0,10));
		}
		return sb.toString();
	}
}




