package com.newlecture.jspweb.entity;

public class MemberRole {
	private String memberId;
	private String roleId;
	
	public MemberRole(String memberId, String roleId) {
		super();
		this.memberId = memberId;
		this.roleId = roleId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	
}