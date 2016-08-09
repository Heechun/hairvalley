package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyBidOfferVO;
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

	List<HairValleyCompanyBidOfferVO> selectCompanyBidContentList(HashMap<String, Object> map);

	int selectCompanyBidContentCount(String company_id);

	List<HairValleyCompanyBidOfferVO> selectCompanyBidContentComplete(HashMap<String, Object> map);

}
