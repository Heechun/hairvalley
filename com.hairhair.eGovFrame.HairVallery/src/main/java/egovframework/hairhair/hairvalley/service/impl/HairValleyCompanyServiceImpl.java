package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyPortfolioVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("companyService")
public class HairValleyCompanyServiceImpl extends EgovAbstractServiceImpl implements HairValleyCompanyService {

	@Resource(name="companyMapper")
	private HairValleyCompanyMapper companyDAO;

	@Override
	public List<HairValleyCompanyListVO> companySelectList() {
		return companyDAO.companySelectList();
	}


	@Override
	public HairValleyCompanyContentVO companyIntro(String company_name) {
		return companyDAO.companySelectIntro(company_name);
	}


	@Override
	public void companyIntroUpdate(HairValleyCompanyContentVO contentVO) {
		companyDAO.companyIntroUpdate(contentVO);
	}


	@Override
	public void CompanyIntroImageInsert(HairValleyCompanyImagesVO imageVO) {
		companyDAO.companyIntroImageInsert(imageVO);
	}


	@Override
	public void companyFirstImage(HairValleyCompanyListVO listVO) {
		companyDAO.companyFirstImageUpdate(listVO);
	}


	@Override
	public List<HairValleyCompanyImagesVO> companyIntroImageSelect(String company_name) {
		return companyDAO.companyIntroImageSelect(company_name);
	}


	@Override
	public List<HairValleyCompanyPortfolioVO> companyPortfolioSelect(String company_name) {
		return companyDAO.companyPortfolioSelect(company_name);
	}


	@Override
	public List<HairValleyCompanyListVO> companySearchList(String query) {
		return companyDAO.companySearchList(query);
	}


	@Override
	public HairValleyCompanyListVO companySelectInfo(String company_name) {
		
		return companyDAO.companySelectInfo(company_name);
	}


	@Override
	public void companyHitUpdate(String company_name) {
		companyDAO.companyHitUpdate(company_name);
		
	}


	@Override
	public List<HairValleyCompanyStaffVO> companyStaffSelect(String company_name) {
		
		return companyDAO.companyStaffSelect(company_name);
	}


	@Override
	public String companyStaffContentSelect(String company_name) {
		
		return companyDAO.companyStaffContentSelect(company_name);
	}


	@Override
	public void companyPortfolioImageInsert(HairValleyCompanyImagesVO imageVO) {
		companyDAO.companyPortfolioImageInsert(imageVO);		
	}


	@Override
	public void companyPortfolioInsert(HairValleyCompanyPortfolioVO portfolioVO) {
		companyDAO.companyPortfolioInsert(portfolioVO);
		
	}

	@Override
	public List<HairValleyCompanyImagesVO> companyPortfolioImageSelect(int idx) {
		return companyDAO.companyPortfolioImageSelect(idx);
	}


	@Override
	public HairValleyCompanyPortfolioVO companyPortfolioSelectOne(HairValleyCompanyPortfolioVO portfolioVO) {
		return companyDAO.companyPortfolioSelectOne(portfolioVO);
	}


	@Override
	public void companyPortfolioImageDelete(int idx) {
		companyDAO.companyPortfolioImageDelete(idx);
	}


	@Override
	public void companyPortfolioDelete(int idx) {
		companyDAO.companyPortfolioDelete(idx);
	}


	@Override
	public List<HairValleyCompanyReviewVO> companyReviewSelectList(String company_name) {
		return companyDAO.companyReviewSelectList(company_name);
	}


	@Override
	public void companyReviewInsert(HairValleyCompanyReviewVO reviewVO) {
		companyDAO.companyReviewInsert(reviewVO);
	}


	@Override
	public void companyReviewImageInsert(HairValleyCompanyImagesVO imageVO) {
		companyDAO.companyReviewImageInsert(imageVO);
	}


	@Override
	public HairValleyCompanyReviewVO companyReviewSelectContent(int review_total_idx) {
		return companyDAO.companyReviewSelectContent(review_total_idx);
	}


	@Override
	public List<HairValleyCompanyImagesVO> companyReviewImageSelect(int review_total_idx) {
		return companyDAO.companyReviewImageSelect(review_total_idx);
	}


	@Override
	public void companyReviewImageDelete(int review_total_idx) {
		companyDAO.companyReviewImageDelete(review_total_idx);
	}


	@Override
	public void companyReviewDelete(int review_total_idx) {
		companyDAO.companyReviewDelete(review_total_idx);
	}


	@Override
	public void companyReviewHitUpdate(int review_total_idx) {
		companyDAO.companyReviewHitUpdate(review_total_idx);
	}




	
}
