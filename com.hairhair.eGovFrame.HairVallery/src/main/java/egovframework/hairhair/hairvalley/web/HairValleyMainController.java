package egovframework.hairhair.hairvalley.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	public String main(ModelMap model) throws Exception {
		
		return "hairvalley/main/hairvalley_index";
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
	
}
