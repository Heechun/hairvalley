package egovframework.hairhair.hairvalley.service.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class MakeCompanyName {
	public static String make(String company_name){
		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
