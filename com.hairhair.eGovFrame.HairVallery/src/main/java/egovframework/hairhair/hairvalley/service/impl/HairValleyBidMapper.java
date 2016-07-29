package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("hairvalleyBidMapper")
public interface HairValleyBidMapper {
	List<?> test();
	
	List<?> selectBidBoardList(int page);
	
	int selectBidBoardListCount();
}
