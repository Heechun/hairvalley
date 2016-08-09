package egovframework.hairhair.hairvalley.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyCommonService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
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
	public int insertUserRegister(String user_id, String user_pw, String user_name, String user_email, String user_phone, String user_loc) throws Exception {
		// TODO Auto-generated method stub
		HairValleyUserVO hairvalleyUserVO = new HairValleyUserVO();
		hairvalleyUserVO.setUser_id(user_id);
		hairvalleyUserVO.setUser_pw(user_pw);
		hairvalleyUserVO.setUser_name(user_name);
		hairvalleyUserVO.setUser_email(user_email);
		hairvalleyUserVO.setUser_phone(user_phone);
		hairvalleyUserVO.setUser_loc(user_loc);
		
		return hairvalleyCommonMapper.insertUserRegister(hairvalleyUserVO);
	}

	@Override
	public boolean checkId(String user_id) throws Exception {
		// TODO Auto-generated method stub
		int retval = hairvalleyCommonMapper.checkId(user_id);
		if(retval > 0){
			return true;
		}
		return false;
	}

	@Override
	public String selectCompanyLogin(String salesman_num, String company_password) {
		HairValleyCompanyListVO companyVO = new HairValleyCompanyListVO();
		
		companyVO.setSalesman_num(salesman_num);
		companyVO.setCompany_password(company_password);
		
		return hairvalleyCommonMapper.selectCompanyLogin(companyVO);
	}

	@Override
	public List<HairValleyCompanyListVO> companyPopularSelect() {
		return hairvalleyCommonMapper.selectPopularCompany();
	}


}
