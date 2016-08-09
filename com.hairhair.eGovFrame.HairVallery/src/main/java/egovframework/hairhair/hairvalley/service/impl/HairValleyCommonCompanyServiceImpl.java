package egovframework.hairhair.hairvalley.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyCommonCompanyService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
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

		@Override
		public void companyCheckName(String name, HttpServletResponse response) {
			HashMap<String, String> hm = new HashMap<>();
			String DBName = hairvalleyCommonCompanyMapper.companyCheckName(name);
			
			if(DBName != null || name==""){
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

		@Override
		public void companyListInsert(HairValleyCompanyListVO companyListVO) {
			hairvalleyCommonCompanyMapper.companyListInsert(companyListVO);
		}

		@Override
		public void companyCheckSales(String sales, HttpServletResponse response) {
			HashMap<String, String> hm = new HashMap<>();
			String DBSales = hairvalleyCommonCompanyMapper.companyCheckSales(sales);
			
			if(DBSales != null || sales==""){
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

		@Override
		public String companyGetCompanyName(String company_id) {	
			return hairvalleyCommonCompanyMapper.companyGetCompanyName(company_id);
		}

		@Override
		public void companyContentInsert(HairValleyCompanyContentVO contentVO) {
			hairvalleyCommonCompanyMapper.companyContentInsert(contentVO);
		}

		@Override
		public void companyIntroImageInsert(HairValleyCompanyImagesVO imageVO) {
			hairvalleyCommonCompanyMapper.companyIntroImageInsert(imageVO);
		}

		@Override
		public void companyStaffInsert(HairValleyCompanyStaffVO staffVO) {
			hairvalleyCommonCompanyMapper.companyStaffInsert(staffVO);
			
		}

		@Override
		public List<HairValleyCompanyBidOfferVO> selectCompanyBidContentList(HashMap<String, Object> map) {
			return hairvalleyCommonCompanyMapper.selectCompanyBidContentList(map);
		}

		@Override
		public int selectCompanyBidContentCount(String company_id) {
			return hairvalleyCommonCompanyMapper.selectCompanyBidContentCount(company_id);
		}

		@Override
		public List<HairValleyCompanyBidOfferVO> selectCompanyBidContentComplete(HashMap<String, Object> map) {
			return hairvalleyCommonCompanyMapper.selectCompanyBidContentComplete(map);
		}


	
}
