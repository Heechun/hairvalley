package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyContentVO {
	
	private String company_name;
	private String company_id;
	private String title;
	private String content;
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "HairValleyCompanyContentVO [company_name=" + company_name
				+ ", company_id=" + company_id + ", title=" + title
				+ ", content=" + content + "]";
	}




	
	
}
