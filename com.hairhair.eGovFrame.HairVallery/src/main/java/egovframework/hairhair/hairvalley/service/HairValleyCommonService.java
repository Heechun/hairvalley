package egovframework.hairhair.hairvalley.service;

import java.util.List;

public interface HairValleyCommonService {

	int selectUserLogin(String user_id, String user_pw) throws Exception;
	int insertUserRegister(String user_id, String user_pw, String user_name, String user_email, String user_phone, String user_loc) throws Exception;
	
	boolean checkId(String user_id) throws Exception;
	
	String selectCompanyLogin(String salesman_num, String company_password);

	List<HairValleyCompanyListVO> companyPopularSelect();
}
