package egovframework.hairhair.hairvalley.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyCommonCompanyService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyContentVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyImagesVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyListVO;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyService;
import egovframework.hairhair.hairvalley.service.HairValleyCompanyStaffVO;
import egovframework.hairhair.hairvalley.service.impl.HairValleyCommonCompanyServiceImpl;
import egovframework.hairhair.hairvalley.service.util.FileUpload;


@Controller
public class HairValleyMainCompanyController {

	/** CommonCompanyService */
	@Resource(name = "hairvalleyCommonCompanyService")
	private HairValleyCommonCompanyService hairvalleyCommonCompanyService = new HairValleyCommonCompanyServiceImpl();
	
	/*
	 * 회원가입화면 개인 및 기업 구분
	 * 
	 */
	@RequestMapping(value="/beforeSignup.do")
	public String beforeSignup(){
		return "hairvalley/main/hairvalley_beforeSignup";
	}
	/*
	 * 기업 회원 가입 화면
	 * 
	 */
	@RequestMapping(value="/companySignup.do")
	public String companySignup(){
		return "hairvalley/main/hairvalley_companySignup";
	}
	/*
	 * 기업회원가입 기능
	 * 
	 */
	@RequestMapping(value="/companySignupImpl.do")
	public String companySignupImpl(HairValleyCompanyListVO companyListVO, HttpSession session, MultipartHttpServletRequest mReq){
		List<String> company_main_imgList = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyMainImages/"), 
				mReq.getFiles("company_main_img"), "Main");
		companyListVO.setCompany_image(company_main_imgList.get(0).toString());
		companyListVO.setCompany_location(companyListVO.getCompany_raw_location1()+" "+companyListVO.getCompany_raw_location2());
		
		hairvalleyCommonCompanyService.companyListInsert(companyListVO);
		session.setAttribute("new_company", "true");
		return "redirect:/hairvalley_main.do";
	}
	/*
	 *  첫 가입시 의무 작성 실행
	 * 
	 */
	@RequestMapping(value="/companyNewImpl.do")
	public String companyNewImpl(HttpSession session, HairValleyCompanyContentVO contentVO, 
			HairValleyCompanyStaffVO staffVO, MultipartHttpServletRequest mReq){
		session.removeAttribute("new_company");
		String company_id = (String) session.getAttribute("company_id");
		
		String company_name = hairvalleyCommonCompanyService.companyGetCompanyName(company_id);
		
		contentVO.setCompany_id(company_id);
		contentVO.setCompany_name(company_name);
		hairvalleyCommonCompanyService.companyContentInsert(contentVO);
		
		List<String> company_intro_imgList = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyIntroImages/"), 
				mReq.getFiles("company_intro_imgList"), "Intro");
		
		for(int i=0; i< company_intro_imgList.size(); i++){
			HairValleyCompanyImagesVO imageVO = new HairValleyCompanyImagesVO();
			
			imageVO.setCompany_name(company_name);
			imageVO.setImage_type("intro");
			imageVO.setImage_url(company_intro_imgList.get(i).toString());
			
			hairvalleyCommonCompanyService.companyIntroImageInsert(imageVO);
		}
		
		List<String> company_staff_img = FileUpload.fileUpload(session.getServletContext().getRealPath("/uploads/CompanyStaffImages/"), 
				mReq.getFiles("company_staff_img"), "Staff");
				
		staffVO.setCompany_name(company_name);
		staffVO.setStaff_image(company_staff_img.get(0).toString());
		hairvalleyCommonCompanyService.companyStaffInsert(staffVO);
		
		return "redirect:/hairvalley_main.do";
	}
	
	/*
	 * 로그인시 입찰정보 제안내역 조회
	 * 
	 */
	@RequestMapping(value ="/companyBidContent.do")
	public String companyBidContent(String company_id, ModelMap model, HttpServletRequest request){
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int startRow, endRow;
		endRow = (int) (page * 10);
		startRow = endRow - 9;

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("company_id", company_id);
		
		System.out.println(map);
		List<HairValleyCompanyBidOfferVO> bidBoardList = hairvalleyCommonCompanyService.selectCompanyBidContentList(map);
		int totalnum = hairvalleyCommonCompanyService.selectCompanyBidContentCount(company_id);

		for(int i=0; i< bidBoardList.size(); i++){
			HairValleyCompanyBidOfferVO vo = (HairValleyCompanyBidOfferVO)bidBoardList.get(i);
			vo.setContent_num(((totalnum - ((page-1) * 10))- i)); //글 번호(마지막으로 등록된 글이 마지막 번호부터 순차적으로 부여)
		}

		int totalpage = totalnum / 10;
		if (totalpage == 0) {
			totalpage = 1;
		} else {
			if (totalnum % 10 != 0)
				totalpage++;
		}

		model.addAttribute("company_id",company_id);
		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);		
		
		return "hairvalley/bid_company_contents/bid_companyContentList";
	}
	/*
	 * 로그인시 입찰정보 계약완료 내역 조회
	 * 
	 */
	@RequestMapping(value ="/companyBidContentComplete.do")
	public String companyBidContentComplete(String company_id, ModelMap model, HttpServletRequest request){
		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int startRow, endRow;
		endRow = (int) (page * 10);
		startRow = endRow - 9;

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("company_id", company_id);
		
		System.out.println(map);
		List<HairValleyCompanyBidOfferVO> bidBoardList = hairvalleyCommonCompanyService.selectCompanyBidContentComplete(map);
		int totalnum = hairvalleyCommonCompanyService.selectCompanyBidContentCount(company_id);
		
		for(int i=0; i< bidBoardList.size(); i++){
			HairValleyCompanyBidOfferVO vo = (HairValleyCompanyBidOfferVO)bidBoardList.get(i);
			vo.setContent_num(((totalnum - ((page-1) * 10))- i)); //글 번호(마지막으로 등록된 글이 마지막 번호부터 순차적으로 부여)
		}

		int totalpage = totalnum / 10;
		if (totalpage == 0) {
			totalpage = 1;
		} else {
			if (totalnum % 10 != 0)
				totalpage++;
		}

		model.addAttribute("company_id",company_id);
		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);		
		
		return "hairvalley/bid_company_contents/bid_companyCompleteContentList";
	}
	/*
	 * ajax 중복id체크
	 */
	@RequestMapping(value="/companyCheckId.do")
	public void companyCheckId(String id, HttpServletResponse response){
		hairvalleyCommonCompanyService.companyCheckId(id, response);
	}
	/*
	 * ajax 중복이름체크
	 */
	@RequestMapping(value="/companyCheckName.do")
	public void companyCheckName(String name, HttpServletResponse response){
		hairvalleyCommonCompanyService.companyCheckName(name, response);
	}
	/*
	 * ajax 중복 사업자번호 체크
	 */
	@RequestMapping(value="/companyCheckSales.do")
	public void companyCheckSales(String sales, HttpServletResponse response){
		hairvalleyCommonCompanyService.companyCheckSales(sales, response);
	}
}
