package egovframework.hairhair.hairvalley.service.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	/*
	 * insertBidBoardData에서 사용하는 업로드 함수
	 * 
	 * 사용자 이미지와 사용자 참고 이미지 업로드 관련 함수
	 */
	public static List<String> fileUpload(String realPath, List<MultipartFile> mf, String type){
		
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
