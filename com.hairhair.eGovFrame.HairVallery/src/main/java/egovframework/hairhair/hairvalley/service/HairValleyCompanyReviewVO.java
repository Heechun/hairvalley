package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyReviewVO {
	private String company_name;
	private int review_total_idx;
	private int review_idx;
	private String review_id;
	private String review_title;
	private String review_content;
	private int review_file_status;
	private int review_hit;
	private String review_write_date;
	private int content_num;
	
	
	public int getContent_num() {
		return content_num;
	}
	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public int getReview_total_idx() {
		return review_total_idx;
	}
	public void setReview_total_idx(int review_total_idx) {
		this.review_total_idx = review_total_idx;
	}
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public String getReview_id() {
		return review_id;
	}
	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_file_status() {
		return review_file_status;
	}
	public void setReview_file_status(int review_file_status) {
		this.review_file_status = review_file_status;
	}
	public int getReview_hit() {
		return review_hit;
	}
	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}
	public String getReview_write_date() {
		return review_write_date;
	}
	public void setReview_write_date(String review_write_date) {
		this.review_write_date = review_write_date;
	}
	@Override
	public String toString() {
		return "HairValleyCompanyReviewVO [company_name=" + company_name
				+ ", review_total_idx=" + review_total_idx + ", review_idx="
				+ review_idx + ", review_id=" + review_id + ", review_title="
				+ review_title + ", review_content=" + review_content
				+ ", review_file_status=" + review_file_status
				+ ", review_hit=" + review_hit + ", review_write_date="
				+ review_write_date + "]";
	}
	
	
}
