package egovframework.hairhair.hairvalley.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
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
	
	
	
	/*
	 * Main화면
	 * 
	 */
	@RequestMapping(value = "/companyMain.do")
	public String main(ModelMap model, HttpSession session){
		session.removeAttribute("company_name");
		List<HairValleyCompanyListVO>companyList = companyService.companySelectList();
		model.addAttribute("companyList",companyList);

		return "hairvalley/company/company_main";
	}
	/*
	 * Main화면 검색기능
	 * 
	 */
		@RequestMapping(value = "/companySearchAddr.do")
		public String searchAddr(ModelMap model, String query){
			
			List<HairValleyCompanyListVO>companyList = companyService.companySearchList(query);
			model.addAttribute("companyList",companyList);
			model.addAttribute("query", query);
			
			return "hairvalley/company/company_main";
		}
	/*
	 * 업체Content화면 ->업체소개 바로 보여줌
	 * 
	 */
	@RequestMapping(value = "/companyContent.do")
	public String content(String company_name, ModelMap model, HttpSession session){
		HairValleyCompanyContentVO companyIntro = companyService.companyIntro(company_name);
		session.setAttribute("company_name", company_name);
		
		List<HairValleyCompanyImagesVO> companyIntroImageList = companyService.companyIntroImageSelect(company_name);
		HairValleyCompanyListVO companyInfo = companyService.companySelectInfo(company_name);
		companyService.companyHitUpdate(company_name);
		
		model.addAttribute("companyIntro", companyIntro);
		model.addAttribute("companyIntroImageList", companyIntroImageList);
		model.addAttribute("companyInfo", companyInfo);
		
		return "hairvalley/company/company_content";
	}
	
	/*
	 * 업체소개 수정화면
	 * 
	 */
	@RequestMapping(value = "/companyContentUpdate.do")
	public String contentUpdate(String title, String content, ModelMap model){
		
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		
		return "hairvalley/company/company_content_update";
	}
	
	/*
	 * 업체소개 수정기능
	 * 
	 */
	@RequestMapping(value = "/companyContentUpdateImpl.do")
	public String contentUpdateImpl(String title, String content, HttpSession session, MultipartHttpServletRequest mReq){
		
		List<String> company_intro_imgList = FileUpload(session.getServletContext().getRealPath("/uploads/CompanyIntroImages/"), 
				mReq.getFiles("company_intro_imgList"), "Intro");
		
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
		
		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:/companyContent.do?company_name="+result;
	}
	
	///////////////////포트폴리오
	/*
	 * 포트폴리오 리스트 화면
	 * 
	 */
	@RequestMapping(value = "/companyPortfolio.do")
	public String portfolio(String company_name, ModelMap model, HttpSession session){
		
		session.setAttribute("company_name", company_name);
		List<HairValleyCompanyPortfolioVO> portfolioList = companyService.companyPortfolioSelect(company_name);
		
		model.addAttribute("portfolioList", portfolioList);
		
		return "hairvalley/company/company_portfolio";
	}
	/*
	 * 포트폴리오 내용(content) 보기
	 * 
	 */
	@RequestMapping(value = "/companyPortfolioContent.do")
	public String portfolioContent(int idx ,ModelMap model, HttpSession session){
		String company_name = (String)session.getAttribute("company_name");
		HairValleyCompanyPortfolioVO portfolioVO = new HairValleyCompanyPortfolioVO();
		portfolioVO.setCompany_name(company_name);
		portfolioVO.setIdx(idx);
		
		portfolioVO = companyService.companyPortfolioSelectOne(portfolioVO);
		List<HairValleyCompanyImagesVO> imageList = companyService.companyPortfolioImageSelect(idx);
		
		model.addAttribute("portfolioVO", portfolioVO);
		model.addAttribute("imageList", imageList);
		
		return "hairvalley/company/company_portfolioContent";
	}
	/*
	 * 포트폴리오 추가(쓰기) 화면
	 * 포트폴리오 리스트화면에서 바로 가능
	 */
	@RequestMapping(value ="/companyPortfolioInsert.do")
	public String portfolioInsert(ModelMap model, HttpSession session){
		
		//아이디 검증후 동작
		String company_name = (String) session.getAttribute("company_name");
		model.addAttribute("company_name", company_name);
				
		return "hairvalley/company/company_portfolioInsert";
	}
	/*
	 * 포트폴리오 추가(쓰기) 기능
	 * 
	 */
	@RequestMapping(value ="/companyPortfolioInsertImpl.do")
	public String portfolioInsertImpl(HairValleyCompanyPortfolioVO portfolioVO, HttpSession session, MultipartHttpServletRequest mReq){
		String company_name = (String)session.getAttribute("company_name");
		
		List<String> company_portfolio_main_img = FileUpload(session.getServletContext().getRealPath("/uploads/CompanyPortfolioImages/"), 
				mReq.getFiles("company_portfolio_main_img"), "Portfolio");
		List<String> company_portfolio_imgList = FileUpload(session.getServletContext().getRealPath("/uploads/CompanyPortfolioImages/"), 
				mReq.getFiles("company_portfolio_imgList"), "Portfolio");
				
		//포트폴리오 메인이미지 첨부 동작
		if(!company_portfolio_main_img.isEmpty()){
			String portfolio_image = company_portfolio_main_img.get(0).toString();
			portfolioVO.setPortfolio_image(portfolio_image);
		}
		portfolioVO.setCompany_name(company_name);
		portfolioVO.setPortfolio_filter("man");

		companyService.companyPortfolioInsert(portfolioVO);
		
		//포트폴리오 이미지 복수개 첨부시 동작
		for(int i=0; i< company_portfolio_imgList.size(); i++){
			HairValleyCompanyImagesVO imageVO = new HairValleyCompanyImagesVO();
			imageVO.setCompany_name(company_name);
			imageVO.setImage_type("portfolio");
			imageVO.setImage_url(company_portfolio_imgList.get(i).toString());
			companyService.companyPortfolioImageInsert(imageVO);
		}

		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:/companyPortfolio.do?company_name="+result;
	}
	/*
	 * 포트폴리오 삭제
	 * 
	 */
	@RequestMapping(value = "/companyPortfolioDelete.do")
	public String potofolioDelete(HttpSession session, int idx){
		String company_name=(String)session.getAttribute("company_name");
		
		companyService.companyPortfolioImageDelete(idx);
		companyService.companyPortfolioDelete(idx);
		
		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:/companyPortfolio.do?company_name="+result;
	}
		
	/*
	 * 
	 * 직원소개, 수정, 삭제기능 구현필요
	 */
	@RequestMapping(value ="/companyStaff.do")
	public String staff(HttpSession session, ModelMap model){
		String company_name = (String) session.getAttribute("company_name");
				
		List<HairValleyCompanyStaffVO>staffList = companyService.companyStaffSelect(company_name);
		String staff_content = companyService.companyStaffContentSelect(company_name);
		model.addAttribute("companyStaffList", staffList);
		model.addAttribute("staff_content", staff_content);
		
		return "hairvalley/company/company_staff";
	}
	
	/*
	 * 이용후기 게시판형식
	 * 
	 */
	@RequestMapping(value = "/companyReview.do")
	public String review(ModelMap model, HttpSession session, String company_name){
		session.setAttribute("company_name", company_name);
		List<HairValleyCompanyReviewVO>reviewList = companyService.companyReviewSelectList(company_name);
		model.addAttribute("reviewList", reviewList);
		return "hairvalley/company/review/company_review";
	}
	/*
	 * 이용후기 글쓰기
	 * 로그인 구현 후 session에 id가져와서 글쓸때 id뿌려줘야함
	 */
	@RequestMapping(value="/companyReviewInsert.do")
	public String reviewInsert(HttpSession session, ModelMap model){
		String company_name = (String) session.getAttribute("company_name");
		model.addAttribute("company_name", company_name);
		
		return "hairvalley/company/review/company_reviewInsert";
	}
	/*
	 * 이용후기 글쓰기 기능
	 * 
	 */
	@RequestMapping(value="/companyReviewInsertImpl.do")
	public String reviewInsertImpl(HairValleyCompanyReviewVO reviewVO, MultipartHttpServletRequest mReq, HttpSession session){
		List<String> company_review_imgList = FileUpload(session.getServletContext().getRealPath("/uploads/CompanyReviewImages/"), 
				mReq.getFiles("company_review_imgList"), "Review");
		//파일 첨부시
		if(company_review_imgList.isEmpty()){
			reviewVO.setReview_file_status(0);
		}
		else{//파일 첨부 안할시
			reviewVO.setReview_file_status(1);
		}
		
		String company_name = reviewVO.getCompany_name();
		companyService.companyReviewInsert(reviewVO);
				
		for(int i=0; i< company_review_imgList.size(); i++){
			HairValleyCompanyImagesVO imageVO = new HairValleyCompanyImagesVO();
			imageVO.setCompany_name(company_name);
			imageVO.setImage_type("review");
			imageVO.setImage_url(company_review_imgList.get(i).toString());
			companyService.companyReviewImageInsert(imageVO);
		}
				
		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:/companyReview.do?company_name="+result;
	}
	/*
	 * 이용후기 읽기
	 * 
	 */
	@RequestMapping(value = "/companyReviewContent.do")
	public String reviewContent(int review_total_idx, ModelMap model){
		
		companyService.companyReviewHitUpdate(review_total_idx);
		HairValleyCompanyReviewVO reviewVO = companyService.companyReviewSelectContent(review_total_idx);
		List<HairValleyCompanyImagesVO> imageList = companyService.companyReviewImageSelect(review_total_idx);
		model.addAttribute("reviewVO", reviewVO);
		model.addAttribute("imageList", imageList);
		
		return "hairvalley/company/review/company_reviewContent";
	}
	/*
	 * 이용후기 삭제
	 */
	@RequestMapping(value = "/companyReviewDelete.do")
	public String ReviewDelete(HttpSession session, int review_total_idx){
		String company_name=(String)session.getAttribute("company_name");
		
		companyService.companyReviewImageDelete(review_total_idx);
		companyService.companyReviewDelete(review_total_idx);
		
		String result="";
		try {
			result = URLEncoder.encode(company_name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:/companyReview.do?company_name="+result;
	}
	
	
	
	
	
	/*
	 * insertBidBoardData에서 사용하는 업로드 함수
	 * 
	 * 사용자 이미지와 사용자 참고 이미지 업로드 관련 함수
	 */
	List<String> FileUpload(String realPath, List<MultipartFile> mf, String type){
		
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
	           	url_list.add("uploads/Company"+type+"Images/"+ saveFileName);
	        }
	    }
		}catch(Exception ex){
			System.out.println("FileUpload()에러 \n" + ex.getMessage());
		}
		
		return url_list;
	}


}
