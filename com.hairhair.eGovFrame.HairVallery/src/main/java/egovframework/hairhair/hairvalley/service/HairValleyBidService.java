package egovframework.hairhair.hairvalley.service;

import java.util.HashMap;
import java.util.List;

public interface HairValleyBidService {

	List<?> main() throws Exception;

	List<?> selectBidBoardList(HashMap<String, Integer> map) throws Exception;
	
	int selectBidBoardListCount() throws Exception;
}
