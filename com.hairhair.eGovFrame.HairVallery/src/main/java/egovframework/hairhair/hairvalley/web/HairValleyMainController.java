package egovframework.hairhair.hairvalley.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyCommonService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.impl.HairValleyCommonServiceImpl;
import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class HairValleyMainController {

	/** EgovSampleService */
	@Resource(name = "hairvalleyCommonService")
	private HairValleyCommonService hairvalleyCommonService = new HairValleyCommonServiceImpl();

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	@RequestMapping(value = "/hairvalley_main.do")
	public String main(HttpServletRequest request, ModelMap model) throws Exception {
		String new_company = (String) request.getSession().getAttribute("new_company");
		String company_id = (String) request.getSession().getAttribute("company_id");

		if(new_company != null && company_id != null){
			return "hairvalley/company/company_firstInsert";
		}
		else{
			List<HairValleyCompanyListVO>companyList = hairvalleyCommonService.companyPopularSelect();
			model.addAttribute("companyList", companyList);
			return "hairvalley/main/hairvalley_index";
		}
	}
	
	@RequestMapping(value = "/hairvalley_page_header.do")
	public String pageHeader(ModelMap model, HttpServletRequest request) throws Exception {

		String id = (String) request.getSession().getAttribute("user_id");
		String company_id = (String) request.getSession().getAttribute("company_id");
		
		
		
		if((id != null)&&(company_id == null)){
			request.setAttribute("isLogin", true);
			request.setAttribute("user_id", id);
			request.setAttribute("isCompanyLogin", false);
		}
		else if((company_id != null)&&(id == null)){
			String company_name = hairvalleyCommonService.companyGetCompanyName(company_id);
			request.setAttribute("isCompanyLogin", true);
			request.setAttribute("company_id", company_id);
			request.setAttribute("isLogin", false);
			request.setAttribute("company_name", company_name);
		}
		else{
			request.setAttribute("isCompanyLogin", false);
			request.setAttribute("isLogin", false);
		}
		
		return "hairvalley/main/hairvalley_page_header";
	}
	
	@RequestMapping(value = "/hairvalley_login.do")
	public String login(ModelMap model, HttpServletRequest request) throws Exception {

		
		String user_id, user_pw;
		user_id = request.getParameter("user_id");
		user_pw = request.getParameter("user_pw");
		
		if(user_id.contains("-")){
			int retval = 0;
			String salesman_num = user_id;
			String company_password = user_pw;
			String company_id = hairvalleyCommonService.selectCompanyLogin(salesman_num, company_password);
			System.out.println("company_id    : "+company_id);
			if(company_id!=null){//로그인 안되었을떄
				retval = 1;
			}
			
			System.out.println("retval    : "+retval);
			request.setAttribute("company_id", company_id);
			request.setAttribute("methodName", "company_login");
			request.setAttribute("retval", retval);
			return "hairvalley/bid_board/isSuccess";
		}
		else{
			int retval = hairvalleyCommonService.selectUserLogin(user_id, user_pw);
			
			request.setAttribute("user_id", user_id);
			request.setAttribute("methodName", "login");
			request.setAttribute("retval", retval);
			
			return "hairvalley/bid_board/isSuccess";
		}
		
		
	}
	
	@RequestMapping(value = "/hairvalley_register.do")
	public String register(ModelMap model, HttpServletRequest request) throws Exception {

		
		return "hairvalley/main/register_user";
	}
	
	@RequestMapping(value = "/hairvalley_insertUser.do")
	public String insertUser(ModelMap model, HttpServletRequest request) throws Exception {

		String user_id, user_pw1, user_pw2, user_name, user_email, user_phone, user_loc, user_sex;
		user_id = request.getParameter("user_id");
		user_pw1 = request.getParameter("user_pw1");
		user_pw1 = request.getParameter("user_pw2");
		user_name = request.getParameter("user_name");
		user_email = request.getParameter("user_email");
		user_phone = request.getParameter("user_phone");
		user_loc = request.getParameter("user_loc");

		
		int retval = hairvalleyCommonService.insertUserRegister(user_id, user_pw1, user_name, user_email, user_phone, user_loc);
		
		
		request.setAttribute("methodName", "register");
		request.setAttribute("retval", retval);
		
		return "hairvalley/bid_board/isSuccess";
	}
	
	@RequestMapping(value = "/hairvalley_logout.do")
	public void logout(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HashMap<String, String> hm = new HashMap<>();
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		request.getSession().invalidate();
		
		hm.put("", "");
		
		JSONObject jb = new JSONObject(hm);
		
		PrintWriter pw;
		try {
			pw = response.getWriter();
			pw.println(jb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	
	}
	
	
	//checkid
	
	@RequestMapping(value = "/hairvalley_checkid.do")
	public void checkid(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		boolean retval = hairvalleyCommonService.checkId(request.getParameter("user_id"));
		
		System.out.println("결과 : " + retval);
		HashMap<String, Boolean> hm = new HashMap<>();
		
		hm.put("isExist", retval);
		
		JSONObject jb = new JSONObject(hm);
		
		PrintWriter pw;
		try {
			pw = response.getWriter();
			pw.println(jb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	
	}
	@RequestMapping(value = "/hairvalley_company_logout.do")
	public void companyLogout(HttpSession session, HttpServletResponse response) {
		HashMap<String, String> hm = new HashMap<>();
		
		session.removeAttribute("company_id");
		hm.put("", "");
		
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
