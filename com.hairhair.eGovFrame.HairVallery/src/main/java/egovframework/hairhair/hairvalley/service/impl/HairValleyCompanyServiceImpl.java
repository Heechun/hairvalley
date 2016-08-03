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
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("companyService")
public class HairValleyCompanyServiceImpl extends EgovAbstractServiceImpl implements HairValleyCompanyService {

	@Resource(name="companyMapper")
	private HairValleyCompanyMapper companyDAO;


	@Override
	public List<HairValleyCompanyReviewVO> selectList() {
		return companyDAO.reviewSelectList();
	}


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
	public List<HairValleyCompanyImagesVO> CompanyIntroImageSelect(String company_name) {
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
	
}
