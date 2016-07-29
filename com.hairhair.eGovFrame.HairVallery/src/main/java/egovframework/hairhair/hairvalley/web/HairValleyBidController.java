package egovframework.hairhair.hairvalley.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	
	
	
	
	@RequestMapping(value = "/bid_List.do")
	public String main(ModelMap model) throws Exception{
//		List<?>list = hairvalleyBidService.main();
//		
//		model.addAttribute("list", list);
		
		return "hairvalley/main/hairvalley_index";
	}
	
	@RequestMapping(value = "/bid_boardList.do")
	public String selectBidBoardList(ModelMap model, HttpServletRequest request) throws Exception{
	
		int page = 0;                                            // 기본 페이지번호를 0으로 설정하고
		
        if(request.getParameter("page") != null){     // 넘어온 파라미터가 있다면 
            page = Integer.parseInt(request.getParameter("page"));  
        }    
        
        int startRow, endRow;
        endRow = (int)((page + 1) * 10);
        startRow = endRow - 9;
  
        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("startRow", startRow);
        map.put("endRow", endRow);
        
    	List<?>bidBoardList = hairvalleyBidService.selectBidBoardList(map);
    	
        int totalnum = hairvalleyBidService.selectBidBoardListCount();
	
		int totalpage = totalnum /10;
		if(totalpage == 0)
		{
			totalpage = 1;
		}
		else
		{
			if(totalnum % 10 !=0)
				totalpage++;
		}
		
		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);
		return "hairvalley/bid_board/bid_boardList";
	}
}
