package egovframework.hairhair.hairvalley.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyCommonCompanyService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("hairvalleyCommonCompanyService")
public class HairValleyCommonCompanyServiceImpl extends EgovAbstractServiceImpl implements HairValleyCommonCompanyService{
	
	//  mybatis 사용
		@Resource(name = "hairvalleyCommonCompanyMapper")
		private HairValleyCommonCompanyMapper hairvalleyCommonCompanyMapper;

		@Override
		public void companyCheckId(String id, HttpServletResponse response) {
			HashMap<String, String> hm = new HashMap<>();
			String DBId = hairvalleyCommonCompanyMapper.companyCheckId(id);
			
			if(DBId != null || id==""){
				hm.put("isExist", "true");
			}
			else{
				hm.put("isExist", "false");
			}
			JSONObject jb = new JSONObject(hm);
			
			PrintWriter pw;
			try {
				pw = response.getWriter();
				pw.println(jb.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	
}
