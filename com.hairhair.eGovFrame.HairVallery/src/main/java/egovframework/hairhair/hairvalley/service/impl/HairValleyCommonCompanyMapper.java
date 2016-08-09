package egovframework.hairhair.hairvalley.service.impl;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyCommonCompanyMapper")
public interface HairValleyCommonCompanyMapper {

	String companyCheckId(String id);

	String companyCheckName(String name);

	void companyListInsert(HairValleyCompanyListVO companyListVO);

	String companyCheckSales(String sales);

	String companyGetCompanyName(String company_id);
	
	void companyContentInsert(HairValleyCompanyContentVO contentVO);

	void companyIntroImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyStaffInsert(HairValleyCompanyStaffVO staffVO);

}
