package egovframework.hairhair.hairvalley.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyCommonCompanyMapper")
public interface HairValleyCommonCompanyMapper {

	String companyCheckId(String id);

}
