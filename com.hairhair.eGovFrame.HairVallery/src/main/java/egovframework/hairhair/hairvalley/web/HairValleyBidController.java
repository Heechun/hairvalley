package egovframework.hairhair.hairvalley.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;






import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.impl.HairValleyBidServiceImpl;
import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class HairValleyBidController {

	/** EgovSampleService */
	@Resource(name = "hairvalleyBidService")
	private HairValleyBidService hairvalleyBidService = new HairValleyBidServiceImpl();

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	
	
	@RequestMapping(value = "/bid_list.do")
	public String main(ModelMap model) throws Exception{
//		List<?>list = hairvalleyBidService.main();
//		
//		model.addAttribute("list", list);
		
		return "bbs/businessReview";
	}
}
