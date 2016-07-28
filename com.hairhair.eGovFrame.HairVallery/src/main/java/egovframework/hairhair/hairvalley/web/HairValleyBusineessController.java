package egovframework.hairhair.hairvalley.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyBusinessService;
import egovframework.rte.fdl.property.EgovPropertyService;


@Controller
public class HairValleyBusineessController {
	
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@Resource(name = "businessService")
	private HairValleyBusinessService businessService;
	
	
	
	
	@RequestMapping(value = "/businessMain.do")
	public String main(ModelMap model){
		
		return "bbs/businessMain";
	}
	
//	@RequestMapping(value = "/businessReview.do")
//	public String review(ModelMap model){
//
//		List<?>list = businessService.main();
//		
//		model.addAttribute("list", list);
//		
//		return "bbs/businessReview";
//	}
	

}
