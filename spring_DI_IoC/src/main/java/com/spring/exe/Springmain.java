package com.spring.exe;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.main.Calculator;

public class Springmain {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("classpath:com/spring/context/root-context.xml");
		Calculator cal = ctx.getBean("cal1", Calculator.class);
		
		int a = 4, b = 2;
		System.out.println(cal.sum(a, b));
		System.out.println(cal.minus(a, b));
		System.out.println(cal.multiply(a, b));
		System.out.println(cal.divide(a, b));
	}
}
