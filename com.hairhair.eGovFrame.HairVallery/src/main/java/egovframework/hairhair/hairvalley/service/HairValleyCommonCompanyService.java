package egovframework.hairhair.hairvalley.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

public interface HairValleyCommonCompanyService {

	void companyCheckId(String id, HttpServletResponse response);

	void companyCheckName(String name, HttpServletResponse response);

	void companyListInsert(HairValleyCompanyListVO companyListVO);

	void companyCheckSales(String sales, HttpServletResponse response);

	String companyGetCompanyName(String company_id);

	void companyContentInsert(HairValleyCompanyContentVO contentVO);

	void companyIntroImageInsert(HairValleyCompanyImagesVO imageVO);

	void companyStaffInsert(HairValleyCompanyStaffVO staffVO);

	List<HairValleyCompanyBidOfferVO> selectCompanyBidContentList(HashMap<String, Object> map);

	int selectCompanyBidContentCount(String company_id);

	List<HairValleyCompanyBidOfferVO> selectCompanyBidContentComplete(HashMap<String, Object> map);

}
