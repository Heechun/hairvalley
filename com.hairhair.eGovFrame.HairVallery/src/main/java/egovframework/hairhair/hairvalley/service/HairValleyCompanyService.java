package egovframework.hairhair.hairvalley.service;

import java.util.List;

public interface HairValleyCompanyService {

	List<HairValleyCompanyReviewVO> selectList();

	List<HairValleyCompanyListVO> companySelectList();

	HairValleyCompanyContentVO companyIntro(String company_name);
	
}
