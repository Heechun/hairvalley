package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyUserVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyCommonMapper")
public interface HairValleyCommonMapper {
	
	int selectUserLogin(HairValleyUserVO hairvalleyUserVO);
	int insertUserRegister(HairValleyUserVO hairvalleyUserVO);
	int checkId(String user_id);
	String selectCompanyLogin(HairValleyCompanyListVO companyVO);
	List<HairValleyCompanyListVO> selectPopularCompany();
}
