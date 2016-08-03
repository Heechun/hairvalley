package egovframework.hairhair.hairvalley.service;

public class HairValleyCompanyPortfolioVO {
	private int idx;
	private String company_name;
	private String portfolio_title;
	private String portfolio_content;
	private String portfolio_image;
	
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
	public String getPortfolio_title() {
		return portfolio_title;
	}
	public void setPortfolio_title(String portfolio_title) {
		this.portfolio_title = portfolio_title;
	}
	public String getPortfolio_content() {
		return portfolio_content;
	}
	public void setPortfolio_content(String portfolio_content) {
		this.portfolio_content = portfolio_content;
	}
	public String getPortfolio_image() {
		return portfolio_image;
	}
	public void setPortfolio_image(String portfolio_image) {
		this.portfolio_image = portfolio_image;
	}
	@Override
	public String toString() {
		return "HairValleyCompanyPortfolioVO [idx=" + idx + ", company_name="
				+ company_name + ", portfolio_title=" + portfolio_title
				+ ", portfolio_content=" + portfolio_content
				+ ", portfolio_image=" + portfolio_image + "]";
	}
	
	
	
	
}
