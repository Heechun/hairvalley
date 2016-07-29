package egovframework.hairhair.hairvalley.service;

import java.util.List;

public interface HairValleyBidService {

	List<?> main() throws Exception;

	List<?> selectBidBoardList(int page) throws Exception;
	
	int selectBidBoardListCount() throws Exception;
}
