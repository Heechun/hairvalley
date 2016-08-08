package egovframework.hairhair.hairvalley.service;

import java.util.HashMap;
import java.util.List;

public interface HairValleyBidService {

	List<?> selectBidBoardList(HashMap<String, Object> map) throws Exception;
	
	List<?> selectBidBoardListSearch(HashMap<String, Object> map) throws Exception;
	
	int selectBidBoardListCount() throws Exception;
	
	int selectBidBoardListSearchCount(String search_msg) throws Exception;
	
	int insertBidBoardData(HairValleyBidInsertVO bidBoardContent) throws Exception;
	
	int insertBidBoardUserFaceImage(String url) throws Exception;
	
	int insertBidBoardUserRefImage(String url) throws Exception;
	
	HairValleyBidVO selectBidBoardContent(int text_num) throws Exception;
	
	List<?> selectBidBoardContentFaceImages(int text_num) throws Exception;
	
	List<?> selectBidBoardContentRefImages(int text_num) throws Exception;
	
	int deleteBidBoardContent(int text_num) throws Exception;

	int updateBidBoardContentCount(HairValleyBidVO hairvallybidvo)throws Exception;
	
	int insertBidOffer(HairValleyBidOfferVO hairvalley_bid_offer_vo) throws Exception;
	
	List<?> selectBidContentOffers(int text_num) throws Exception;
	
	List<?> selectUserBidContentList(HashMap<String, Object> map) throws Exception;
	
	int selectUserBidContentCount(String user_id) throws Exception;
	
	int insertBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo) throws Exception;
	
	int updateBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo) throws Exception;
	
	List<?> selectUserBidCompleteContentList(HashMap<String, Object> map) throws Exception;
	
	int selectUserBidCompleteContentCount(String user_id) throws Exception;
	
	List<?> selectBidContentContractOffer(int text_num) throws Exception;
}
