package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("companyMapper")
public interface CompanyMapper {

	List<HairValleyCompanyReviewVO> reviewSelectList();

	List<HairValleyCompanyListVO> companySelectList();

	HairValleyCompanyContentVO companySelectIntro(String company_name);

}
