package com.jsp.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

public class HttpRequestAdapter {

	public static Object execute(HttpServletRequest request, Class<?> className) 
			throws 	InstantiationException, IllegalAccessException, 
					IllegalArgumentException, InvocationTargetException {
		
		Method[] methods = className.getMethods();
		
		Object obj = className.newInstance();
		
		for(Method method : methods) {
			if(method.getName().indexOf("set") != 0) continue;
			
			String paramName = method.getName().substring(3);
			paramName = (paramName.charAt(0) + "").toLowerCase() + paramName.substring(1);
			
			String[] paramValues = request.getParameterValues(paramName);
			
			if(method.getParameterTypes()[0].isArray()) {
				method.invoke(obj, new Object[] { paramValues });
			}else {
				method.invoke(obj, paramValues[0]);
			}
			
		}
		
		return obj;
	}
}
