package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyPortfolioVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("companyMapper")
public interface HairValleyCompanyMapper {
	

	List<HairValleyCompanyListVO> companySelectList();

	HairValleyCompanyContentVO companySelectIntro(String company_name);

	void companyIntroUpdate(HairValleyCompanyContentVO contentVO);

	void companyIntroImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyFirstImageUpdate(HairValleyCompanyListVO listVO);

	List<HairValleyCompanyImagesVO> companyIntroImageSelect(String company_name);

	List<HairValleyCompanyPortfolioVO> companyPortfolioSelect(String company_name);

	List<HairValleyCompanyListVO> companySearchList(String query);

	HairValleyCompanyListVO companySelectInfo(String company_name);

	void companyHitUpdate(String company_name);

	List<HairValleyCompanyStaffVO> companyStaffSelect(String company_name);

	String companyStaffContentSelect(String company_name);

	void companyPortfolioImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyPortfolioInsert(HairValleyCompanyPortfolioVO portfolioVO);

	List<HairValleyCompanyImagesVO> companyPortfolioImageSelect(int idx);

	HairValleyCompanyPortfolioVO companyPortfolioSelectOne(HairValleyCompanyPortfolioVO portfolioVO);

	void companyPortfolioImageDelete(int idx);

	void companyPortfolioDelete(int idx);

	List<HairValleyCompanyReviewVO> companyReviewSelectList(String company_name);

	void companyReviewInsert(HairValleyCompanyReviewVO reviewVO);

	void companyReviewImageInsert(HairValleyCompanyImagesVO imageVO);

	HairValleyCompanyReviewVO companyReviewSelectContent(int review_total_idx);

	List<HairValleyCompanyImagesVO> companyReviewImageSelect(int review_total_idx);

	void companyReviewImageDelete(int review_total_idx);

	void companyReviewDelete(int review_total_idx);

	void companyReviewHitUpdate(int review_total_idx);

	void companyStaffInsert(HairValleyCompanyStaffVO staffVO);

	String companyGetCompanyId(String company_name);

	HairValleyCompanyContentVO companyGetContent(String company_name);

}
