package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyPortfolioVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("companyMapper")
public interface HairValleyCompanyMapper {

	List<HairValleyCompanyReviewVO> reviewSelectList();

	List<HairValleyCompanyListVO> companySelectList();

	HairValleyCompanyContentVO companySelectIntro(String company_name);

	void companyIntroUpdate(HairValleyCompanyContentVO contentVO);

	void companyIntroImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyFirstImageUpdate(HairValleyCompanyListVO listVO);

	List<HairValleyCompanyImagesVO> companyIntroImageSelect(String company_name);

	List<HairValleyCompanyPortfolioVO> companyPortfolioSelect(String company_name);

	List<HairValleyCompanyListVO> companySearchList(String query);

}
