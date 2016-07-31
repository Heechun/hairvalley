package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyBidMapper")
public interface HairValleyBidMapper {
	
	List<?> selectBidBoardList(HashMap<String, Integer> map);
	
	int selectBidBoardListCount();
	
	int insertBidBoardData(HairValleyBidInsertVO bidBoardContent);
	
	int insertBidBoardUserFaceImage(String url);
	
	int insertBidBoardUserRefImage(String url);
}
