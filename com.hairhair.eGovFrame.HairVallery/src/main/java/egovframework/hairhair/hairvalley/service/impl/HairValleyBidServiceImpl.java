package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("hairvalleyBidService")
public class HairValleyBidServiceImpl extends EgovAbstractServiceImpl implements HairValleyBidService{

	// TODO mybatis 사용
	@Resource(name = "hairvalleyBidMapper")
	private HairValleyBidMapper hairvalleyBidMapper;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public List<?> main() throws Exception {
		// TODO Auto-generated method stub
		List<?> hairvalleyBidVO = hairvalleyBidMapper.test();
		
		return hairvalleyBidVO;
	}
	
	@Override
	public List<?> selectBidBoardList(HashMap<String, Integer> map) throws Exception {
		// TODO Auto-generated method stub
		List<?> hairvalleyBidVO = hairvalleyBidMapper.selectBidBoardList(map); 
		//for(int i=0; i< hairvalleyBidVO.size(); i++){
		//	System.out.println("받아온 아이디 값 : " + ((HairValleyBidVO)hairvalleyBidVO.get(i)).getUser_id());
		//}
		return hairvalleyBidVO;
	}

	@Override
	public int selectBidBoardListCount() throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidBoardListCount();
	}
	
}
