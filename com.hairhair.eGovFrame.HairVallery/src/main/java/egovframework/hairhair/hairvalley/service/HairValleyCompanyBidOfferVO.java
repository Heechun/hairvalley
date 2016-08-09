package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyBidOfferVO {

	private int rnum;
	private int text_num;
	private String user_id;
	private String reg_date;
	private String title;
	private String hit;
	private String company_id;
	private int offer_count;
	private int content_num;
	private int is_contract;
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getText_num() {
		return text_num;
	}
	public void setText_num(int text_num) {
		this.text_num = text_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public int getOffer_count() {
		return offer_count;
	}
	public void setOffer_count(int offer_count) {
		this.offer_count = offer_count;
	}
	public int getContent_num() {
		return content_num;
	}
	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}
	public int getIs_contract() {
		return is_contract;
	}
	public void setIs_contract(int is_contract) {
		this.is_contract = is_contract;
	}
	@Override
	public String toString() {
		return "HairValleyCompanyBidOfferVO [rnum=" + rnum + ", text_num="
				+ text_num + ", user_id=" + user_id + ", reg_date=" + reg_date
				+ ", title=" + title + ", hit=" + hit + ", company_id="
				+ company_id + ", offer_count=" + offer_count
				+ ", content_num=" + content_num + ", is_contract="
				+ is_contract + "]";
	}
	
	
	
	
}
