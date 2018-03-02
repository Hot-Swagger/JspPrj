package com.newlecture.jspweb.entity;

import java.util.Date;

public class Comment {
	private String id;
	private String content;
	private Date regdate;
	private String noticeId;
	
	public Comment(String id, String content, Date regdate, String noticeId) {
		super();
		this.id = id;
		this.content = content;
		this.regdate = regdate;
		this.noticeId = noticeId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}
	
	
}
