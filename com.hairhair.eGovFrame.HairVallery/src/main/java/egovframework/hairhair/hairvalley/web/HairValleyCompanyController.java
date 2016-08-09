package egovframework.hairhair.hairvalley.web;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyPortfolioVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyReviewVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
import egovframework.hairhair.hairvalley.service.util.FileUpload;
import egovframework.hairhair.hairvalley.service.util.MakeCompanyName;
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
		
		String sessionCompanyId = (String) session.getAttribute("company_id");
		
		List<HairValleyCompanyImagesVO> companyIntroImageList = companyService.companyIntroImageSelect(company_name);
		HairValleyCompanyListVO companyInfo = companyService.companySelectInfo(company_name);
		companyService.companyHitUpdate(company_name);
		
		model.addAttribute("companyIntro", companyIntro);
		model.addAttribute("companyIntroImageList", companyIntroImageList);
		model.addAttribute("companyInfo", companyInfo);
		model.addAttribute("sessionCompanyId", sessionCompanyId);
		
		return "hairvalley/company/company_content";
	}
	
	/*
	 * 업체소개 수정화면
	 * 
	 */
	@RequestMapping(value = "/companyContentUpdate.do")
	public String contentUpdate(String company_name, ModelMap model){
		
		HairValleyCompanyContentVO contentVO = companyService.companyGetContent(company_name);
		
		model.addAttribute("contentVO", contentVO);
		
		return "hairvalley/company/company_content_update";
	}
	/*
	 * 업체소개 수정기능
	 * 
	 */
	@RequestMapping(value = "/companyContentUpdateImpl.do")
	public String contentUpdateImpl(String title, String content, HttpSession session, MultipartHttpServletRequest mReq){
		
		List<String> company_intro_imgList = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyIntroImages/"), 
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
				
//				//첫번째 첨부파일 이미지를 업체 대표이미지로 설정
//				if(i==0){
//					HairValleyCompanyListVO listVO = new HairValleyCompanyListVO();
//					String company_image = company_intro_imgList.get(0).toString();
//										
//					listVO.setCompany_name(company_name);
//					listVO.setCompany_image(company_image);
//										
//					companyService.companyFirstImage(listVO);
//				}
			}
		}

		return "redirect:/companyContent.do?company_name="+MakeCompanyName.make(company_name);
	}
	
	///////////////////포트폴리오
	/*
	 * 포트폴리오 리스트 화면
	 * 
	 */
	@RequestMapping(value = "/companyPortfolio.do")
	public String portfolio(String company_name, ModelMap model, HttpSession session){
		
		session.setAttribute("company_name", company_name);
		String sessionCompanyId = (String) session.getAttribute("company_id");
		String company_id = companyService.companyGetCompanyId(company_name);
		String isMaster = "no";
		List<HairValleyCompanyPortfolioVO> portfolioList = companyService.companyPortfolioSelect(company_name);
		
		if((sessionCompanyId!=null)&&(sessionCompanyId.equals(company_id))){
			isMaster = "yes";
		}
		model.addAttribute("portfolioList", portfolioList);
		model.addAttribute("isMaster", isMaster);
		
		return "hairvalley/company/company_portfolio";
	}
	/*
	 * 포트폴리오 내용(content) 보기
	 * 
	 */
	@RequestMapping(value = "/companyPortfolioContent.do")
	public String portfolioContent(int idx ,ModelMap model, HttpSession session){
		String company_name = (String)session.getAttribute("company_name");
		String sessionCompanyId = (String) session.getAttribute("company_id");
		String company_id = companyService.companyGetCompanyId(company_name);
		String isMaster = "no";
		
		if((sessionCompanyId!=null)&&(sessionCompanyId.equals(company_id))){
			isMaster = "yes";
		}
		HairValleyCompanyPortfolioVO portfolioVO = new HairValleyCompanyPortfolioVO();
		portfolioVO.setCompany_name(company_name);
		portfolioVO.setIdx(idx);
		
		portfolioVO = companyService.companyPortfolioSelectOne(portfolioVO);
		List<HairValleyCompanyImagesVO> imageList = companyService.companyPortfolioImageSelect(idx);
		
		model.addAttribute("portfolioVO", portfolioVO);
		model.addAttribute("imageList", imageList);
		model.addAttribute("isMaster", isMaster);
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
		
		List<String> company_portfolio_main_img = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyPortfolioImages/"), 
				mReq.getFiles("company_portfolio_main_img"), "Portfolio");
		List<String> company_portfolio_imgList = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyPortfolioImages/"), 
				mReq.getFiles("company_portfolio_imgList"), "Portfolio");
				
		//포트폴리오 메인이미지 첨부 동작
		if(!company_portfolio_main_img.isEmpty()){
			String portfolio_image = company_portfolio_main_img.get(0).toString();
			portfolioVO.setPortfolio_image(portfolio_image);
		}
		portfolioVO.setCompany_name(company_name);
		
		companyService.companyPortfolioInsert(portfolioVO);
		
		//포트폴리오 이미지 복수개 첨부시 동작
		for(int i=0; i< company_portfolio_imgList.size(); i++){
			HairValleyCompanyImagesVO imageVO = new HairValleyCompanyImagesVO();
			imageVO.setCompany_name(company_name);
			imageVO.setImage_type("portfolio");
			imageVO.setImage_url(company_portfolio_imgList.get(i).toString());
			companyService.companyPortfolioImageInsert(imageVO);
		}

		return "redirect:/companyPortfolio.do?company_name="+MakeCompanyName.make(company_name);
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
		
		return "redirect:/companyPortfolio.do?company_name="+MakeCompanyName.make(company_name);
	}
		
	/*
	 * 
	 * 직원소개 삭제기능 구현필요
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
	 * 직원소개 추가
	 * 
	 */
	@RequestMapping(value="/companyStaffInsert.do")
	public String staffInsert(){
		
		return "hairvalley/company/company_staffInsert";
	}
	/*
	 * 직원소개 추가기능
	 * 
	 */
	@RequestMapping(value="/companyStaffInsertImpl.do")
	public String staffInsetImpl(HttpSession session, HairValleyCompanyStaffVO staffVO, MultipartHttpServletRequest mReq){
		
		String company_name = (String) session.getAttribute("company_name");
		
		List<String> company_staff_img = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyStaffImages/"), 
				mReq.getFiles("company_staff_img"), "Staff");
				
		staffVO.setCompany_name(company_name);
		staffVO.setStaff_image(company_staff_img.get(0).toString());
		System.out.println(staffVO);
		companyService.companyStaffInsert(staffVO);
		
		
		return "redirect:/companyStaff.do";
	}
	
	/*
	 * 이용후기 게시판형식
	 * 
	 */
	@RequestMapping(value = "/companyReview.do")
	public String review(ModelMap model, HttpSession session, HttpServletRequest request ,String company_name){
		
		String user_id = (String) session.getAttribute("user_id");
		
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int startRow, endRow;
		endRow = (int) (page * 10);
		startRow = endRow - 9;

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("company_name", company_name);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		
		
		int totalnum = 0;
		
		List<HairValleyCompanyReviewVO>reviewList = companyService.companyReviewSelectList(map);
		totalnum = companyService.companyReviewSelectListCount(company_name);
				
		for(int i=0; i< reviewList.size(); i++){
			reviewList.get(i).setContent_num(((totalnum - ((page-1) * 10))- i)); //글 번호(마지막으로 등록된 글이 마지막 번호부터 순차적으로 부여)
		}
		
		int totalpage = totalnum / 10;
		if (totalpage == 0) {
			totalpage = 1;
		} else {
			if (totalnum % 10 != 0)
				totalpage++;
		}
		model.addAttribute("company_name",company_name);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("user_id", user_id);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);
		
		
		return "hairvalley/company/review/company_review";
	}
	/*
	 * 이용후기 글쓰기
	 * 로그인 구현 후 session에 id가져와서 글쓸때 id뿌려줘야함
	 */
	@RequestMapping(value="/companyReviewInsert.do")
	public String reviewInsert(HttpSession session, ModelMap model){
		String company_name = (String) session.getAttribute("company_name");
		String user_id = (String) session.getAttribute("user_id");
		model.addAttribute("company_name", company_name);
		model.addAttribute("user_id", user_id);
		return "hairvalley/company/review/company_reviewInsert";
	}
	/*
	 * 이용후기 글쓰기 기능
	 * 
	 */
	@RequestMapping(value="/companyReviewInsertImpl.do")
	public String reviewInsertImpl(HairValleyCompanyReviewVO reviewVO, MultipartHttpServletRequest mReq, HttpSession session){
		List<String> company_review_imgList = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyReviewImages/"), 
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
				
		return "redirect:/companyReview.do?company_name="+MakeCompanyName.make(company_name);
	}
	/*
	 * 이용후기 읽기
	 * 
	 */
	@RequestMapping(value = "/companyReviewContent.do")
	public String reviewContent(int review_total_idx, ModelMap model, HttpSession session){
		
		companyService.companyReviewHitUpdate(review_total_idx);
		HairValleyCompanyReviewVO reviewVO = companyService.companyReviewSelectContent(review_total_idx);
		List<HairValleyCompanyImagesVO> imageList = companyService.companyReviewImageSelect(review_total_idx);
		model.addAttribute("reviewVO", reviewVO);
		model.addAttribute("imageList", imageList);
		String company_name = (String) session.getAttribute("company_name");
		model.addAttribute("company_name", company_name);
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
		
		return "redirect:/companyReview.do?company_name="+MakeCompanyName.make(company_name);
	}

}
