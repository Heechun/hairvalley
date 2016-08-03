package egovframework.hairhair.hairvalley.web;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyPortfolioVO;
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
	
	//업체소개, 업체소개 버튼 누르면 첫화면이 바로 업체소개DB조회 한다음 결과 뿌림
	@RequestMapping(value = "/companyContent.do")
	public String content(String company_name, ModelMap model, HttpSession session){
		
//		String company_name = (String) session.getAttribute("company_name");
		
		HairValleyCompanyContentVO companyIntro = companyService.companyIntro(company_name);
		session.setAttribute("company_name", company_name);
		
		List<HairValleyCompanyImagesVO> companyIntroImageList = companyService.CompanyIntroImageSelect(company_name);
		
		model.addAttribute("companyIntro", companyIntro);
		model.addAttribute("companyIntroImageList", companyIntroImageList);
		
		return "hairvalley/company/company_content";
	}
	
	//업체소개 수정 페이지
	@RequestMapping(value = "/companyContentUpdate.do")
	public String contentUpdate(String title, String content, ModelMap model){
		
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		
		return "hairvalley/company/company_content_update";
	}
	
	//업체소개 수정 기능
	@RequestMapping(value = "/companyContentUpdateImpl.do")
	public String contentUpdateImpl(String title, String content, HttpSession session, MultipartHttpServletRequest mReq){
		
		List<String> company_intro_imgList = FileUpload(session.getServletContext().getRealPath("/uploads/CompanyIntroImages/"), 
				mReq.getFiles("company_intro_imgList"));
		
		HairValleyCompanyContentVO contentVO = new HairValleyCompanyContentVO();
		String company_name = (String) session.getAttribute("company_name");
				
		contentVO.setCompany_name(company_name);
		contentVO.setTitle(title);
		contentVO.setContent(content);
		
		companyService.companyIntroUpdate(contentVO);
		
		//이미지 첨부 했을때만 동작
		if(!company_intro_imgList.isEmpty()){
			for(int i=0; i< company_intro_imgList.size(); i++){
				HairValleyCompanyImagesVO imageVO = new HairValleyCompanyImagesVO();
				
				imageVO.setCompany_name(company_name);
				imageVO.setImage_type("intro");
				imageVO.setImage_url(company_intro_imgList.get(i).toString());
				
				companyService.CompanyIntroImageInsert(imageVO);
				
				//첫번째 첨부파일 이미지를 업체 대표이미지로 설정
				if(i==0){
					HairValleyCompanyListVO listVO = new HairValleyCompanyListVO();
					String company_image = company_intro_imgList.get(0).toString();
										
					listVO.setCompany_name(company_name);
					listVO.setCompany_image(company_image);
										
					companyService.companyFirstImage(listVO);
				}
			}
		}
		return "redirect:/companyContent.do?company_name="+company_name;
	}
	//해당업체의 포트폴리오목록으로 이동
	@RequestMapping(value = "/companyPortfolio.do")
	public String portfolio(String company_name, ModelMap model){
		
		List<HairValleyCompanyPortfolioVO> portfolioList = companyService.companyPortfolioSelect(company_name);
		
		model.addAttribute("portfolioList", portfolioList);
		
		return "hairvalley/company/company_portfolio";
	}
	//해당되는 포토폴리오 내용으로 이동
	@RequestMapping(value = "/companyPortfolioContent.do")
	public String portfolioContent(HairValleyCompanyPortfolioVO portfolioList, String company_name, ModelMap model){
		
//		List<HairValleyCompanyImagesVO> imageList = companyService.companyPortfolioImageSelect();
		
		return "hairvalley/company/company_portfolioContent";
	}
	

	//이용후기
	@RequestMapping(value = "/companyReview.do")
	public String review(ModelMap model){
		
		List<HairValleyCompanyReviewVO>list = companyService.selectList();
		model.addAttribute("articleList", list);
		
		return "hairvalley/company/review/company_review";
	}
	
	//업체 목록 검색 화면
	@RequestMapping(value = "/companySearchAddr.do")
	public String searchAddr(ModelMap model, String query){
		
//		query = '%'+query+'%';
//		System.out.println(query);
		
		List<HairValleyCompanyListVO>companyList = companyService.companySearchList(query);
		model.addAttribute("companyList",companyList);
	
		return "hairvalley/company/company_main";
	}
	
	@RequestMapping(value ="/companyGroup.do")
	public String group(){
		
		return "hairvalley/company/company_group";
	}
	
	/*
	 * insertBidBoardData에서 사용하는 업로드 함수
	 * 
	 * 사용자 이미지와 사용자 참고 이미지 업로드 관련 함수
	 */
	List<String> FileUpload(String realPath, List<MultipartFile> mf){
		
		List<String> url_list = new ArrayList<String>();
		try{
			File dir = new File(realPath);
	        if (!dir.isDirectory()) {
	            dir.mkdirs();
	    }
	        
	 
	    if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
	        
	    } 
	    else {
	        for (int i = 0; i < mf.size(); i++) {
	            // 파일 중복명 처리
	            String genId = UUID.randomUUID().toString(); 
	            // 본래 파일명
	            String originalfileName = mf.get(i).getOriginalFilename(); 
	            
	            // 저장되는 파일 이름
	            String saveFileName = genId + "." + originalfileName;
	            
	            // 저장 될 파일 경로
	            String savePath = realPath + saveFileName; 
	
	            byte[] fileData = mf.get(i).getBytes();
	            FileOutputStream output = new FileOutputStream(savePath);
	            output.write(fileData);
	           	url_list.add("uploads/CompanyIntroImages/"+ saveFileName);
	        }
	    }
		}catch(Exception ex){
			System.out.println("FileUpload()에러 \n" + ex.getMessage());
		}
		
		return url_list;
	}


}
