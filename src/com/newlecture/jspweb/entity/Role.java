package com.newlecture.jspweb.entity;

public class Role {
	private String id;
	private String introduction;
	
	public Role(String id, String introduction) {
		super();
		this.id = id;
		this.introduction = introduction;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	
	
}
