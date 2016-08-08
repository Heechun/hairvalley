package egovframework.hairhair.hairvalley.service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class HairValleyBidInsertVO {
	String title;
	String user_id;
	int req_price;
	String perm;
	String cut;
	String dye;
	String add_request;
	int hit;
	String regip;
	String hope_location;
	
	
	public String getHope_location() {
		return hope_location;
	}

	public void setHope_location(String hope_location) {
		this.hope_location = hope_location;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	
	public int getReq_price() {
		return req_price;
	}

	public void setReq_price(int req_price) {
		this.req_price = req_price;
	}
	
	
	public String getPerm() {
		return perm;
	}

	public void setPerm(String perm) {
		this.perm = perm;
	}

	public String getCut() {
		return cut;
	}

	public void setCut(String cut) {
		this.cut = cut;
	}

	public String getDye() {
		return dye;
	}

	public void setDye(String dye) {
		this.dye = dye;
	}

	public String getAdd_request() {
		return add_request;
	}

	public void setAdd_request(String add_request) {
		this.add_request = add_request;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	

	
}
