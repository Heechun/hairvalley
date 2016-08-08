package egovframework.hairhair.hairvalley.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
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

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



























import egovframework.hairhair.hairvalley.service.HairValleyBidContractVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyEmailVO;
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

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		String search_msg = request.getParameter("search_msg");
		
		List<?> bidBoardList = null;
		int totalnum = 0;
		
		
		if(search_msg != null && search_msg != "")
		{
			map.put("search_msg", search_msg);
			bidBoardList = hairvalleyBidService.selectBidBoardListSearch(map);
			totalnum = hairvalleyBidService.selectBidBoardListSearchCount(search_msg);
		}
		else
		{
			bidBoardList = hairvalleyBidService.selectBidBoardList(map);
			totalnum = hairvalleyBidService.selectBidBoardListCount();
		}
		
		
		
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
		
		model.addAttribute("search_msg",search_msg);
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
			hairvalley_bid_insertVO.setAdd_request(multiRequest.getParameter("add_request").replace("\r\n", "<br>"));
			hairvalley_bid_insertVO.setUser_id(multiRequest.getParameter("user_id"));
			hairvalley_bid_insertVO.setHit(0);
			hairvalley_bid_insertVO.setRegip(request.getRemoteAddr());
			hairvalley_bid_insertVO.setHope_location(request.getParameter("hope_location"));

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
			
			request.setAttribute("retval", boardlist_retval);
			request.setAttribute("methodName", "insertBidContent");
			
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	
		
		
		return "hairvalley/bid_board/isSuccess";
	}

	
	
	/*
	 * 입찰 게시판
	 * --> 게시물 조회
	 */
	@RequestMapping(value = "/bid_selectBoardContent.do")
	public String selectBidBoardContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		int content_num = Integer.parseInt(request.getParameter("content_num"));
		String regip = request.getRemoteAddr();
		
		
		HairValleyBidVO bidBoardContent = hairvalleyBidService.selectBidBoardContent(text_num);
		
		if(!regip.equals(bidBoardContent.getRegip())){         
	        	
			bidBoardContent.setRegip(regip);
			bidBoardContent.setHit(bidBoardContent.getHit()+1);
			hairvalleyBidService.updateBidBoardContentCount(bidBoardContent);
	    }
		
		List<?> bidBoardContentFaceImages = hairvalleyBidService.selectBidBoardContentFaceImages(text_num);
		List<?> bidBoardContentRefImages = hairvalleyBidService.selectBidBoardContentRefImages(text_num);
		
		List<?> bidBoardOffers = hairvalleyBidService.selectBidContentOffers(text_num);
				

		bidBoardContent.setContent_num(content_num);
		
	
		model.addAttribute("bidBoardContent", bidBoardContent);
		model.addAttribute("bidBoardContentFaceImages", bidBoardContentFaceImages);		
		model.addAttribute("bidBoardContentRefImages", bidBoardContentRefImages);		
		model.addAttribute("bidBoardOffers", bidBoardOffers);		
		
		return "hairvalley/bid_board/bid_boardContent";
	}
	
	
	@RequestMapping(value = "/bid_selectUserBidContentList.do")
	public String selectUserBidContentList(ModelMap model, HttpServletRequest request) throws Exception{
		
		String user_id = request.getParameter("user_id");
		
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
		map.put("user_id", user_id);
		
		
		List<?> bidBoardList = hairvalleyBidService.selectUserBidContentList(map);
		int totalnum = hairvalleyBidService.selectUserBidContentCount(user_id);

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

		model.addAttribute("user_id",user_id);
		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);
		

		return "hairvalley/bid_user_contents/bid_userContentList";
	}
	
	@RequestMapping(value = "/bid_selectUserBidCompleteContentList.do")
	public String selectUserBidCompleteContentList(ModelMap model, HttpServletRequest request) throws Exception{
		
		String user_id = request.getParameter("user_id");
		
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
		map.put("user_id", user_id);
		
		
		List<?> bidBoardList = hairvalleyBidService.selectUserBidCompleteContentList(map);
		int totalnum = hairvalleyBidService.selectUserBidCompleteContentCount(user_id);

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

		model.addAttribute("user_id",user_id);
		model.addAttribute("bidBoardList", bidBoardList);
		model.addAttribute("page", page);
		model.addAttribute("totalpage", totalpage);
		

		return "hairvalley/bid_user_contents/bid_userCompleteContentList";
	}
	
	
	@RequestMapping(value = "/bid_selectUserBidContent.do")
	public String selectUserBidContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		int content_num = Integer.parseInt(request.getParameter("content_num"));
		String regip = request.getRemoteAddr();
		
		
		HairValleyBidVO bidBoardContent = hairvalleyBidService.selectBidBoardContent(text_num);
		
		if(!regip.equals(bidBoardContent.getRegip())){         
	        	
			bidBoardContent.setRegip(regip);
			bidBoardContent.setHit(bidBoardContent.getHit()+1);
			hairvalleyBidService.updateBidBoardContentCount(bidBoardContent);
	    }
		
		List<?> bidBoardContentFaceImages = hairvalleyBidService.selectBidBoardContentFaceImages(text_num);
		List<?> bidBoardContentRefImages = hairvalleyBidService.selectBidBoardContentRefImages(text_num);
		
		List<?> bidBoardOffers = hairvalleyBidService.selectBidContentOffers(text_num);
				

		bidBoardContent.setContent_num(content_num);
		
	
		model.addAttribute("bidBoardContent", bidBoardContent);
		model.addAttribute("bidBoardContentFaceImages", bidBoardContentFaceImages);		
		model.addAttribute("bidBoardContentRefImages", bidBoardContentRefImages);		
		model.addAttribute("bidBoardOffers", bidBoardOffers);		
		
		return "hairvalley/bid_user_contents/bid_userContent";
	}
	

	@RequestMapping(value = "/bid_selectUserBidCompleteContent.do")
	public String selectUserBidCompleteContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		int content_num = Integer.parseInt(request.getParameter("content_num"));
		String regip = request.getRemoteAddr();
		
		
		HairValleyBidVO bidBoardContent = hairvalleyBidService.selectBidBoardContent(text_num);
		
		if(!regip.equals(bidBoardContent.getRegip())){         
	        	
			bidBoardContent.setRegip(regip);
			bidBoardContent.setHit(bidBoardContent.getHit()+1);
			hairvalleyBidService.updateBidBoardContentCount(bidBoardContent);
	    }
		
		List<?> bidBoardContentFaceImages = hairvalleyBidService.selectBidBoardContentFaceImages(text_num);
		List<?> bidBoardContentRefImages = hairvalleyBidService.selectBidBoardContentRefImages(text_num);
		
		List<?> bidBoardOffers = hairvalleyBidService.selectBidContentContractOffer(text_num);

		bidBoardContent.setContent_num(content_num);
		
	
		model.addAttribute("bidBoardContent", bidBoardContent);
		model.addAttribute("bidBoardContentFaceImages", bidBoardContentFaceImages);		
		model.addAttribute("bidBoardContentRefImages", bidBoardContentRefImages);		
		model.addAttribute("bidBoardOffers", bidBoardOffers);		
		
		return "hairvalley/bid_user_contents/bid_userCompleteContent";
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
		request.setAttribute("methodName", "deleteBidContent");
		
	
		return "hairvalley/bid_board/isSuccess";
	}
	
	
	@RequestMapping(value = "/bid_updateBoardData.do")
	public String updateBidBoardContent(ModelMap model, HttpServletRequest request) throws Exception{
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		HairValleyBidVO bidBoardContent = hairvalleyBidService.selectBidBoardContent(text_num);
		
		List<?> bidBoardContentFaceImages = hairvalleyBidService.selectBidBoardContentFaceImages(text_num);
		List<?> bidBoardContentRefImages = hairvalleyBidService.selectBidBoardContentRefImages(text_num);
		
		model.addAttribute("bidBoardContent", bidBoardContent);
		model.addAttribute("bidBoardContentFaceImages", bidBoardContentFaceImages);		
		model.addAttribute("bidBoardContentRefImages", bidBoardContentRefImages);		
		
		return "hairvalley/bid_board/bid_boardUpdate";
	}
	
	

	@RequestMapping(value = "/bid_boardOffer.do")
	public String bidBoardOffer(ModelMap model, HttpServletRequest request) throws Exception{
		
		request.setAttribute("text_num", request.getParameter("text_num"));
		request.setAttribute("content_num", request.getParameter("content_num"));
		
		return "hairvalley/bid_board/bid_boardOffer";
	}
	
	@RequestMapping(value = "/bid_boardOfferInsert.do")
	public String bidBoardOfferInsert(ModelMap model, HttpServletRequest request) throws Exception{
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
	
		
		HairValleyBidOfferVO hairvalley_bid_offer_vo = new HairValleyBidOfferVO();
		hairvalley_bid_offer_vo.setCompany_id(request.getParameter("company_id"));
		hairvalley_bid_offer_vo.setText_num(text_num);
		hairvalley_bid_offer_vo.setOffer_price(Integer.parseInt(request.getParameter("offer_price")));
		hairvalley_bid_offer_vo.setAdd_offer(request.getParameter("add_offer"));
		
		int retval = hairvalleyBidService.insertBidOffer(hairvalley_bid_offer_vo);
		
		request.setAttribute("retval", retval);
		request.setAttribute("methodName", "insertOffer");
		request.setAttribute("text_num", text_num);
		request.setAttribute("content_num", request.getParameter("content_num"));
		
		return "hairvalley/bid_board/isSuccess";
	}
	
	@RequestMapping(value = "/bid_updateBidContract.do")
	public String updateBidContract(ModelMap model, HttpServletRequest request) throws Exception{
		
		int text_num = Integer.parseInt(request.getParameter("text_num"));
		String company_id = (String)request.getParameter("company_id");
		String user_id = (String)request.getParameter("user_id");
		
		HairValleyBidContractVO vo = new HairValleyBidContractVO();
		vo.setText_num(text_num);
		vo.setCompany_id(company_id);
		
		int insert_retval = hairvalleyBidService.insertBidContract(vo);
		int update_retval = 0;
		if(insert_retval > 0){
			update_retval = hairvalleyBidService.updateBidContract(vo);
		}
		
		HairValleyEmailVO email_vo = new HairValleyEmailVO();
		email_vo.setUser_id(user_id);
		email_vo.setCompany_id(company_id);
		
		HairValleyEmailVO retval_vo = hairvalleyBidService.selectEmailInfomation(email_vo);
	
    	sendEmail(retval_vo.getUser_email(), retval_vo.getCompany_email(), "wonjong551@naver.com", retval_vo.getUser_name(), retval_vo.getCompany_name(), retval_vo.getUser_phone());
   		
		request.setAttribute("retval", update_retval);
		request.setAttribute("methodName", "updateBidContract");
		
	
		return "hairvalley/bid_board/isSuccess";
	}
	
	private void sendEmail(String user_email, String company_email, String from, String user_name, String company_name, String phone){
		Properties p = System.getProperties(); // ������ ���� ��ü
    	p.put("mail.smtp.user", "wonjong551");
    	p.put("mail.smtp.host","smtp.naver.com"); // ���̹� SMTP
    	p.put("mail.smtp.port", "465");
    	p.put("mail.smtp.starttls.enable", "true");
    	p.put("mail.smtp.auth", "true");
    	p.put("mail.smtp.debug", "true");
    	p.put("mail.smtp.socketFactory.port", "465");
    	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    	p.put("mail.smtp.socketFactory.fallback", "false");

    		try {

    			javax.mail.Session mailSession = javax.mail.Session.getInstance(p,
    					new javax.mail.Authenticator ( )
    							
    							{
    							
    							protected javax.mail.PasswordAuthentication getPasswordAuthentication ( )
    							
    							{
    							
    							return new javax.mail.PasswordAuthentication ( "wonjong551" , "rladnjswhd!@" ) ;
    							
    							}
    							
    							});

    			Message msg = new MimeMessage(mailSession);
    			

    		    msg.setSubject("[HairValley - 입찰계약성사]: " + company_name);
    		        

    		    Address fromAddr = new InternetAddress(from);
    		    msg.setFrom(fromAddr);
    		        

    		    Address toAddr = new InternetAddress(user_email);
    		    msg.addRecipient(Message.RecipientType.TO, toAddr);
    		
    		    
    		    msg.setContent("[사용자 이름] : "+ user_name +"<br/>[사용자 연락처] : " + phone + "<br/>[사용자 이메일] : " + user_email
    		    		+ "<br/>[업체 이름] : " + company_name + "<br/>[업체 이메일] : " + company_email , "text/html;charset=UTF-8");
    		        
    		    Transport.send(msg);
    		    
    			return;
    		} catch (Exception e) {
    			System.out.println(e.getMessage());
    			
    			return;
    		} finally {
    		}
 
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
