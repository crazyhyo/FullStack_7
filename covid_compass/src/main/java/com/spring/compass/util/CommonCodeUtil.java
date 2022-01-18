package com.spring.compass.util;

import java.io.IOException;
import java.io.Reader;
import java.util.Properties;

import org.apache.ibatis.io.Resources;

public class CommonCodeUtil {

	private static Properties properties = new Properties();
	
	private static boolean status = false;
	
	private static void initProperties() {
		try {
			Reader reader = Resources.getResourceAsReader("com/spring/compass/properties/commonCode.properties");
			properties.load(reader);
			status = true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static String getCodeName(String cmmnCode) {
		
		String codeName = "property가 로드되지 않았습니다.";
		
		if(!status) {
			System.out.println("한번만 실행되는지 체크");
			initProperties();
		}
		
		codeName = properties.getProperty(cmmnCode);
		
		return codeName;
	}
	
}
