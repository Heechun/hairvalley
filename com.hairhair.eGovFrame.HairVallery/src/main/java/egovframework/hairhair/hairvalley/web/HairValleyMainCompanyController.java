package egovframework.hairhair.hairvalley.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.hairhair.hairvalley.service.HairValleyCommonCompanyService;
import egovframework.hairhair.hairvalley.service.impl.HairValleyCommonCompanyServiceImpl;

@Controller
public class HairValleyMainCompanyController {

	/** CommonCompanyService */
	@Resource(name = "hairvalleyCommonCompanyService")
	private HairValleyCommonCompanyService hairvalleyCommonCompanyService = new HairValleyCommonCompanyServiceImpl();
	
	
	@RequestMapping(value="/beforeSignup.do")
	public String beforeSignup(){
		
		return "hairvalley/main/hairvalley_beforeSignup";
	}
	
	@RequestMapping(value="/companySignup.do")
	public String companySignup(){
		
		return "hairvalley/main/hairvalley_companySignup";
	}
	@RequestMapping(value="/companyCheckId.do")
	public void companyCheckId(String id, HttpServletResponse response){
		
		hairvalleyCommonCompanyService.companyCheckId(id, response);
	}
}
