package egovframework.hairhair.hairvalley.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyCommonService;
import egovframework.hairhair.hairvalley.service.HairValleyUserVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;


@Service("hairvalleyCommonService")
public class HairValleyCommonServiceImpl extends EgovAbstractServiceImpl implements HairValleyCommonService{

	
	// TODO mybatis 사용
	@Resource(name = "hairvalleyCommonMapper")
	private HairValleyCommonMapper hairvalleyCommonMapper;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	@Override
	public int selectUserLogin(String user_id, String user_pw) throws Exception {
		// TODO Auto-generated method stub
		HairValleyUserVO hairvalleyUserVO = new HairValleyUserVO();
		hairvalleyUserVO.setUser_id(user_id);
		hairvalleyUserVO.setUser_pw(user_pw);
		
		return hairvalleyCommonMapper.selectUserLogin(hairvalleyUserVO);
	}

	@Override
	public int insertUserRegister(String user_id, String user_pw, String user_name, String user_email, String user_phone, String user_loc, String user_sex) throws Exception {
		// TODO Auto-generated method stub
		HairValleyUserVO hairvalleyUserVO = new HairValleyUserVO();
		hairvalleyUserVO.setUser_id(user_id);
		hairvalleyUserVO.setUser_pw(user_pw);
		hairvalleyUserVO.setUser_name(user_name);
		hairvalleyUserVO.setUser_email(user_email);
		hairvalleyUserVO.setUser_phone(user_phone);
		hairvalleyUserVO.setUser_loc(user_loc);
		hairvalleyUserVO.setUser_sex(user_sex);
		
		return hairvalleyCommonMapper.insertUserRegister(hairvalleyUserVO);
	}

}
