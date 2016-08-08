package egovframework.hairhair.hairvalley.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.HairValleyCommonService;
import egovframework.hairhair.hairvalley.service.impl.HairValleyBidServiceImpl;
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
	public String main(ModelMap model, HttpServletRequest request) throws Exception {
		
		return "hairvalley/main/hairvalley_index";
	}
	
	@RequestMapping(value = "/hairvalley_page_header.do")
	public String pageHeader(ModelMap model, HttpServletRequest request) throws Exception {

		String id = (String) request.getSession().getAttribute("user_id");
		
		if(id != null || id == ""){
			request.setAttribute("isLogin", true);
			request.setAttribute("user_id", id);
		}else{
			request.setAttribute("isLogin", false);
		}
		
		return "hairvalley/main/hairvalley_page_header";
	}
	
	@RequestMapping(value = "/hairvalley_login.do")
	public String login(ModelMap model, HttpServletRequest request) throws Exception {

		
		String user_id, user_pw;
		user_id = request.getParameter("user_id");
		user_pw = request.getParameter("user_pw");
		
		int retval = hairvalleyCommonService.selectUserLogin(user_id, user_pw);
		
		request.setAttribute("user_id", user_id);
		request.setAttribute("methodName", "login");
		request.setAttribute("retval", retval);
		
		return "hairvalley/bid_board/isSuccess";
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
}
