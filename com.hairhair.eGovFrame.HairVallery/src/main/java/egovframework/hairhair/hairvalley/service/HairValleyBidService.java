package egovframework.hairhair.hairvalley.service;

import java.util.HashMap;
import java.util.List;

public interface HairValleyBidService {

	List<?> selectBidBoardList(HashMap<String, Integer> map) throws Exception;
	
	int selectBidBoardListCount() throws Exception;
	
	
	int insertBidBoardData() throws Exception;
}
