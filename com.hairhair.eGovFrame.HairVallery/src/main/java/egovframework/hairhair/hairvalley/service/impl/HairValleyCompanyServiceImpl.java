package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("companyService")
public class HairValleyCompanyServiceImpl extends EgovAbstractServiceImpl implements HairValleyCompanyService {

	@Resource(name="companyMapper")
	private CompanyMapper companyDAO;


	@Override
	public List<HairValleyCompanyReviewVO> selectList() {
		List<HairValleyCompanyReviewVO> reviewList = companyDAO.reviewSelectList();

		return reviewList;
	}


	@Override
	public List<HairValleyCompanyListVO> companySelectList() {
		List<HairValleyCompanyListVO> companyList = companyDAO.companySelectList();
		return companyList;
	}


	@Override
	public HairValleyCompanyContentVO companyIntro(String company_name) {
		HairValleyCompanyContentVO companyIntro = companyDAO.companySelectIntro(company_name);

		return companyIntro;
	}
	
}
