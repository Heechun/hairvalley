package egovframework.hairhair.hairvalley.service;

import java.util.List;

public interface HairValleyCompanyService {

	List<HairValleyCompanyReviewVO> selectList();

	List<HairValleyCompanyListVO> companySelectList();

	HairValleyCompanyContentVO companyIntro(String company_name);

	void companyIntroUpdate(HairValleyCompanyContentVO contentVO);

	void CompanyIntroImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyFirstImage(HairValleyCompanyListVO listVO);

	List<HairValleyCompanyImagesVO> CompanyIntroImageSelect(String company_name);

	List<HairValleyCompanyPortfolioVO> companyPortfolioSelect(String company_name);

	List<HairValleyCompanyListVO> companySearchList(String query);
	
}
