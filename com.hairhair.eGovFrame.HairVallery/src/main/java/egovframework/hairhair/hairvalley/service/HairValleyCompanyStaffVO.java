package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyStaffVO {
	private String company_name;
	private String staff_name;
	private String staff_job;
	private String staff_count;
	private String staff_intro;
	private String staff_image;
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_job() {
		return staff_job;
	}
	public void setStaff_job(String staff_job) {
		this.staff_job = staff_job;
	}
	public String getStaff_count() {
		return staff_count;
	}
	public void setStaff_count(String staff_count) {
		this.staff_count = staff_count;
	}
	public String getStaff_intro() {
		return staff_intro;
	}
	public void setStaff_intro(String staff_intro) {
		this.staff_intro = staff_intro;
	}
	public String getStaff_image() {
		return staff_image;
	}
	public void setStaff_image(String staff_image) {
		this.staff_image = staff_image;
	}
	
	@Override
	public String toString() {
		return "HairValleyCompanyStaffVO [company_name=" + company_name
				+ ", staff_name=" + staff_name + ", staff_job=" + staff_job
				+ ", staff_count=" + staff_count + ", staff_intro="
				+ staff_intro + ", staff_image=" + staff_image + "]";
	}
	
	
}
