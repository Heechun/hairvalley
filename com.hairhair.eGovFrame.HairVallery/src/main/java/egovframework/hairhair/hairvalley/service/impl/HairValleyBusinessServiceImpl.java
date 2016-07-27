package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyBusinessService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("businessService")
public class HairValleyBusinessServiceImpl extends EgovAbstractServiceImpl implements HairValleyBusinessService {

	@Resource(name="businessMapper")
	private BusinessMapper businessDAO;

	@Override
	public List<?> main() {
		List<?> testVO = businessDAO.test();
		
		System.out.println("!!!!!impl");
		
		System.out.println(testVO);
		
		return testVO;
	}
	
}
