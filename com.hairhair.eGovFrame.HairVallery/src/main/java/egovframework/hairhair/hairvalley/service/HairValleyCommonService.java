package egovframework.hairhair.hairvalley.service;

public interface HairValleyCommonService {

	int selectUserLogin(String user_id, String user_pw) throws Exception;
	int insertUserRegister(String user_id, String user_pw, String user_name, String user_email, String user_phone, String user_loc) throws Exception;
	
}
