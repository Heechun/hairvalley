package egovframework.hairhair.hairvalley.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyService;
import egovframework.rte.fdl.property.EgovPropertyService;


@Controller
public class HairValleyCompanyController {
	
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@Resource(name = "companyService")
	private HairValleyCompanyService companyService;
	
	
	
	
	@RequestMapping(value = "/companyMain.do")
	public String main(ModelMap model){
		
		List<HairValleyCompanyListVO>companyList = companyService.companySelectList();
		
		model.addAttribute("companyList",companyList);
		
		
		
		return "hairvalley/company/company_main";
	}
	
	@RequestMapping(value = "/companyContent.do")
	public String content(@ModelAttribute("companyList") HairValleyCompanyListVO companyList, ModelMap model){
		//vo받기해야됨
		System.out.println(companyList);
		return "hairvalley/company/company_content";
	}
	
	@RequestMapping(value = "/companyReview.do")
	public String review(ModelMap model){
		
		List<HairValleyCompanyReviewVO>list = companyService.selectList();
		model.addAttribute("articleList", list);
		
		return "hairvalley/company/review/company_review";
	}
	

}
