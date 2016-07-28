package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyBidService;
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

}
