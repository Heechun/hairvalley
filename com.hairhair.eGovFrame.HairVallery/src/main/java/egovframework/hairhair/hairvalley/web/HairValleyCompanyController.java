package egovframework.hairhair.hairvalley.web;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
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
	
	
	
	//업체 목록
	@RequestMapping(value = "/companyMain.do")
	public String main(ModelMap model){
		
		List<HairValleyCompanyListVO>companyList = companyService.companySelectList();

		model.addAttribute("companyList",companyList);

		return "hairvalley/company/company_main";
	}
	
	//업체소개, 업체누르면 첫화면이 바로 업체소개로
	@RequestMapping(value = "/companyContent.do")
	public String content(String company_name, ModelMap model, HttpSession session){
		
		session.setAttribute("company_name", company_name);
		HairValleyCompanyContentVO companyIntro = companyService.companyIntro(company_name);
		model.addAttribute("companyIntro", companyIntro);
		
		return "hairvalley/company/company_content";
	}
	
	//업체소개 수정페이지 가기
	@RequestMapping(value = "/companyContentUpdate.do")
	public String contentUpdate(String title, String content, ModelMap model){
		
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		
		return "hairvalley/company/company_content_update";
	}
	//업체소개 수정기능
	@RequestMapping(value = "/companyContentUpdateImpl.do")
	public String contentUpdateImpl(String title, String content, HttpSession session, MultipartHttpServletRequest mReq){
		
		FileUpload("C:\\HairValley/upload/company_intro_images/", mReq.getFiles("company_intro_img"));
		HairValleyCompanyContentVO contentVO = new HairValleyCompanyContentVO();
		
		String company_name = (String) session.getAttribute("company_name");
		
		contentVO.setCompany_name(company_name);
		contentVO.setTitle(title);
		contentVO.setContent(content);
		
		
		System.out.println(contentVO);
		
		
	
		return "redirect:/companyContent.do?company_name="+company_name;
	}
	
	//이용후기
	@RequestMapping(value = "/companyReview.do")
	public String review(ModelMap model){
		
		List<HairValleyCompanyReviewVO>list = companyService.selectList();
		model.addAttribute("articleList", list);
		
		return "hairvalley/company/review/company_review";
	}
	
	/*
	 * insertBidBoardData에서 사용하는 업로드 함수
	 * 
	 * 사용자 이미지와 사용자 참고 이미지 업로드 관련 함수
	 */
	void FileUpload(String realPath, List<MultipartFile> mf){
		
		try{
			File dir = new File(realPath);
	        if (!dir.isDirectory()) {
	            dir.mkdirs();
	    }
	        
	 
	    if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
	        
	    } else {
	        for (int i = 0; i < mf.size(); i++) {
	            // 파일 중복명 처리
	            String genId = UUID.randomUUID().toString(); 
	            // 본래 파일명
	            String originalfileName = mf.get(i).getOriginalFilename(); 
	             
	            String saveFileName = genId + "." + originalfileName;
	            // 저장되는 파일 이름
	
	            String savePath = realPath + saveFileName; // 저장 될 파일 경로
	
	            byte[] fileData = mf.get(i).getBytes();
	            FileOutputStream output = new FileOutputStream(realPath + saveFileName);
	            output.write(fileData);
	        }
	    }
		}catch(Exception ex){
			System.out.println("FileUpload()에러 \n" + ex.getMessage());
		}
	}


}
