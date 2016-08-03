package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyImagesVO {
	private int idx;
	private String company_name;
	private String image_type;
	private String image_url;
	private int parent_num;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getImage_type() {
		return image_type;
	}
	public void setImage_type(String image_type) {
		this.image_type = image_type;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public int getParent_num() {
		return parent_num;
	}
	public void setParent_num(int parent_num) {
		this.parent_num = parent_num;
	}
	
	@Override
	public String toString() {
		return "HairValleyCompanyImagesVO [idx=" + idx + ", company_name="
				+ company_name + ", image_type=" + image_type + ", image_url="
				+ image_url + ", parent_num=" + parent_num + "]";
	}
	
	
	
	
}
