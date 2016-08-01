package egovframework.hairhair.hairvalley.service;

import java.util.HashMap;
import java.util.List;

public interface HairValleyBidService {

	List<?> selectBidBoardList(HashMap<String, Integer> map) throws Exception;
	
	int selectBidBoardListCount() throws Exception;
	
	
	int insertBidBoardData(HairValleyBidInsertVO bidBoardContent) throws Exception;
	
	int insertBidBoardUserFaceImage(String url) throws Exception;
	
	int insertBidBoardUserRefImage(String url) throws Exception;
	
	HairValleyBidVO selectBidBoardContent(int text_num) throws Exception;
	
	List<?> selectBidBoardContentFaceImages(int text_num) throws Exception;
	
	List<?> selectBidBoardContentRefImages(int text_num) throws Exception;
}
