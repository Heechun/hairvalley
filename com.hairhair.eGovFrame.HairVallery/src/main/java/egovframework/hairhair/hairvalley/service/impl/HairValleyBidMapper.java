package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyBidMapper")
public interface HairValleyBidMapper {
	
	List<?> selectBidBoardList(HashMap<String, Integer> map);
	
	int selectBidBoardListCount();
	
	int insertBidBoardData(HairValleyBidInsertVO bidBoardContent);
	
	int insertBidBoardUserFaceImage(String url);
	
	int insertBidBoardUserRefImage(String url);
	
	HairValleyBidVO selectBidBoardContent(int text_num);
	
	List<?> selectBidBoardContentFaceImages(int text_num);
	
	List<?> selectBidBoardContentRefImages(int text_num);
	
	int deleteBidBoardContent(int text_num);
	
	int updateBidBoardContentCount(int text_num);
	
}
