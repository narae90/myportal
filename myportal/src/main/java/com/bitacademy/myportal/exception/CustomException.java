package com.bitacademy.myportal.exception;


// 구체적인 예외상황을 기록하기 위해 RuntimeException
//	
public class CustomException extends RuntimeException{
	public CustomException() {
		super("MainControllerException!!");
	}
	
	public CustomException(String message) {
		super(message);
	}

}
