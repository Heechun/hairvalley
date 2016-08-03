package egovframework.hairhair.hairvalley.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

























import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
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
	
	
	@RequestMapping(value = "/bid_boardList.do")
	public String selectBidBoardList(ModelMap model, HttpServletRequest request)
			throws Exception {

		int page = 1;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int startRow, endRow;
		endRow = (int) (page * 10);
		startRow = endRow - 9;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		List<?> bidBoardList = hairvalleyBidService.selectBidBoardList(map);
		int totalnum = hairvalleyBidService.selectBidBoardListCount();

		for(int i=0; i< bidBoardList.size(); i++){
			HairValleyBidVO vo = (HairValleyBidVO)bidBoardList.get(i);
			vo.setContent_num(((totalnum - ((page-1) * 10))- i)); //글 번호(마지막으로 등록된 글이 마지막 번호부터 순차적으로 부여)
		}

		int totalpage = totalnum / 10;
		if (totalpage == 0) {
			totalpage = 1;
		} else {
			if (totalnum % 10 != 0)
				totalpage++;
		}

		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);
		

		return "hairvalley/bid_board/bid_boardList";
	}
	
	
	
	

	/*
	 *	글쓰기 버튼 클릭 시 화면 전환
	 * 
	 */
	@RequestMapping(value = "/bid_writeBoardData.do")
	public String writeBidBoardData(ModelMap model) throws Exception {


		return "hairvalley/bid_board/bid_boardWrite";
	}
	
	
	
	
	/*
	 *	입찰 등록 폼에서 등록 완료 시 insert 쿼리 수행을 위한 메서드
	 * 
	 */
	@RequestMapping(value = "/bid_insertBoardData.do", method = RequestMethod.POST)
	public String insertBidBoardData(MultipartHttpServletRequest multiRequest, ModelMap model, HttpServletRequest request) throws Exception {
		
		try{	

			List<String> user_faceImg = FileUpload(request.getSession().getServletContext().getRealPath("/uploads/UserFaceImages/"), multiRequest.getFiles("user_faceImg"), true);

			List<String> user_refImg = FileUpload(request.getSession().getServletContext().getRealPath("/uploads/UserRefImages/"), multiRequest.getFiles("user_refImg") ,false);
			
			
			HairValleyBidInsertVO hairvalley_bid_insertVO = new HairValleyBidInsertVO(); 
			hairvalley_bid_insertVO.setTitle(multiRequest.getParameter("title"));
			hairvalley_bid_insertVO.setReq_price(Integer.parseInt(multiRequest.getParameter("req_price")));
			hairvalley_bid_insertVO.setPerm(multiRequest.getParameter("perm"));
			hairvalley_bid_insertVO.setCut(multiRequest.getParameter("cut"));
			hairvalley_bid_insertVO.setDye(multiRequest.getParameter("dye"));
			hairvalley_bid_insertVO.setAdd_request(multiRequest.getParameter("add_request"));
			hairvalley_bid_insertVO.setUser_id(multiRequest.getParameter("user_id"));
			hairvalley_bid_insertVO.setHit(0);
			
			int boardlist_retval = hairvalleyBidService.insertBidBoardData(hairvalley_bid_insertVO);
			
			System.out.println("boardlist결과 : " + boardlist_retval);
			
			for(int i=0; i< user_faceImg.size(); i++){
				int userFace_retval = hairvalleyBidService.insertBidBoardUserFaceImage(user_faceImg.get(i).toString());
				System.out.println("face image 결과 : ["+i+"] ==> " + userFace_retval);
			}
			
			for(int i=0; i< user_refImg.size(); i++){
				int userRef_retval = hairvalleyBidService.insertBidBoardUserRefImage(user_refImg.get(i).toString());
				System.out.println("ref image 결과 :: ["+i+"] ==> " + userRef_retval);
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	
		
		
		return "hairvalley/bid_board/bid_boardWrite";
	}

	
	
	/*
	 * 입찰 게시판
	 * --> 게시물 조회
	 */
	@RequestMapping(value = "/bid_selectBoardContent.do")
	public String selectBidBoardContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		int content_num = Integer.parseInt(request.getParameter("content_num"));
		
		hairvalleyBidService.updateBidBoardContentCount(text_num);
		
		HairValleyBidVO bidBoardContent = hairvalleyBidService.selectBidBoardContent(text_num);
		List<?> bidBoardContentFaceImages = hairvalleyBidService.selectBidBoardContentFaceImages(text_num);
		List<?> bidBoardContentRefImages = hairvalleyBidService.selectBidBoardContentRefImages(text_num);
		
		
		bidBoardContent.setContent_num(content_num);
		
		System.out.println(bidBoardContent.getAdd_request());
		model.addAttribute("bidBoardContent", bidBoardContent);
		model.addAttribute("bidBoardContentFaceImages", bidBoardContentFaceImages);		
		model.addAttribute("bidBoardContentRefImages", bidBoardContentRefImages);		
		
		
		return "hairvalley/bid_board/bid_boardContent";
	}
	
	/*
	 * 입찰 게시판
	 * --> 게시물 조회
	 */
	@RequestMapping(value = "/bid_deleteBoardData.do")
	public String deleteBidBoardContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		
		int retval = hairvalleyBidService.deleteBidBoardContent(text_num);
		
		request.setAttribute("retval", retval);
		
		System.out.println("삭제 리턴 값 : " + retval);
		return "hairvalley/bid_board/deleteSuccess";
	}
	
	
	
	
	
	
	/*
	 * insertBidBoardData에서 사용하는 업로드 함수
	 * 
	 * 사용자 이미지와 사용자 참고 이미지 업로드 관련 함수
	 */
	List<String> FileUpload(String realPath, List<MultipartFile> mf, boolean isFaceImage){
		
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
	             
	            String saveFileName = genId + "." + originalfileName;
	            // 저장되는 파일 이름
	
	            String savePath = realPath + saveFileName; // 저장 될 파일 경로
	
	            byte[] fileData = mf.get(i).getBytes();
	            FileOutputStream output = new FileOutputStream(savePath);
	            output.write(fileData);
	            if(isFaceImage){
	            	url_list.add("uploads/UserFaceImages/"+ saveFileName);
	            }
	            else
	            {
	            	url_list.add("uploads/UserRefImages/"+ saveFileName);
	            }
	        }
	    }
		}catch(Exception ex){
			System.out.println("FileUpload()에러 \n" + ex.getMessage());
		}
		
		return url_list;
	}

	
}
