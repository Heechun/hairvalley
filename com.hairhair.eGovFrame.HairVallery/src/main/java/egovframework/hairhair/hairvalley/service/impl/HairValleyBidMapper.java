package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyBidContractVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyEmailVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyBidMapper")
public interface HairValleyBidMapper {
	
	List<?> selectBidBoardList(HashMap<String, Object> map);
	
	List<?> selectBidBoardListSearch(HashMap<String, Object> map);
	
	int selectBidBoardListCount();
	
	int selectBidBoardListSearchCount(String search_msg);
	
	int insertBidBoardData(HairValleyBidInsertVO bidBoardContent);
	
	int insertBidBoardUserFaceImage(String url);
	
	int insertBidBoardUserRefImage(String url);
	
	HairValleyBidVO selectBidBoardContent(int text_num);
	
	List<?> selectBidBoardContentFaceImages(int text_num);
	
	List<?> selectBidBoardContentRefImages(int text_num);
	
	int deleteBidBoardContent(int text_num);
	
	int updateBidBoardContentCount(HairValleyBidVO hairvallybidvo);
	
	int insertBidOffer(HairValleyBidOfferVO hairvalley_bid_offer_vo);
	
	List<?> selectBidContentOffers(int text_num);
	
	List<?> selectUserBidContentList(HashMap<String, Object> map);
	
	int selectUserBidContentCount(String user_id);
	
	int insertBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo);
	
	int updateBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo);
	
	List<?> selectUserBidCompleteContentList(HashMap<String, Object> map);
	
	int selectUserBidCompleteContentCount(String user_id);
	
	List<?> selectBidContentContractOffer(int text_num);
	
	HairValleyEmailVO selectEmailInfomation(HairValleyEmailVO vo);
}
