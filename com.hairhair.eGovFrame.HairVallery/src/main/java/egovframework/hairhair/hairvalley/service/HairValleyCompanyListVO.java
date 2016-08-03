package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyListVO {
	private int seq;
	private String company_id;
	private String company_name;
	private String salesman_num;
	private String company_location;
	private String company_image;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getSalesman_num() {
		return salesman_num;
	}
	public void setSalesman_num(String salesman_num) {
		this.salesman_num = salesman_num;
	}
	public String getCompany_location() {
		return company_location;
	}
	public void setCompany_location(String company_location) {
		this.company_location = company_location;
	}
	public String getCompany_image() {
		return company_image;
	}
	public void setCompany_image(String company_image) {
		this.company_image = company_image;
	}
	@Override
	public String toString() {
		return "HairValleyCompanyListVO [seq=" + seq + ", company_id="
				+ company_id + ", company_name=" + company_name
				+ ", salesman_num=" + salesman_num + ", company_location="
				+ company_location + ", company_image=" + company_image + "]";
	}

	
	
	
	
}
