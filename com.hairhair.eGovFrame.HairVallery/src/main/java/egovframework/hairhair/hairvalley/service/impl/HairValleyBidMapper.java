package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyBidMapper")
public interface HairValleyBidMapper {
	
	List<?> selectBidBoardList(HashMap<String, Integer> map);
	
	int selectBidBoardListCount();
	
	int insertBidBoardData(List<?> bidBoardContent);
}
