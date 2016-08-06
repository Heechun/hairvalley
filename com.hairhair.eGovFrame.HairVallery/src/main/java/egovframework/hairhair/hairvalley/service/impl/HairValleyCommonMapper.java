package egovframework.hairhair.hairvalley.service.impl;

import egovframework.hairhair.hairvalley.service.HairValleyUserVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyCommonMapper")
public interface HairValleyCommonMapper {
	
	int selectUserLogin(HairValleyUserVO hairvalleyUserVO);
	int insertUserRegister(HairValleyUserVO hairvalleyUserVO);
}
