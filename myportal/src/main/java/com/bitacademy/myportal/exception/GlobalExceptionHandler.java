package com.bitacademy.myportal.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(HttpServletRequest request,Exception e) {
		// 1. 로킹
		System.out.println("===========");
		System.out.println("ControllerAdvice에 의한 ErrorHandling");
		e.printStackTrace();
		
		// 2. 시스템 오류 안내 화면
		ModelAndView mav = new ModelAndView();
		mav.addObject("name", e.getClass().getSimpleName());
		mav.addObject("message", e.getMessage());
		mav.setViewName("errors/exception");
		
		return mav;
		
	}

}
