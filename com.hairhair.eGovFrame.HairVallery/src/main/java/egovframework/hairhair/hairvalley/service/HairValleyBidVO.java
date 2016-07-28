package egovframework.hairhair.hairvalley.service;

public class HairValleyBidVO {
	
	private String name;
	private String num;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "TestVO [name=" + name + ", num=" + num + "]";
	}
}
