package com.newlecture.jspweb.entity;

import java.util.Date;

public class NoticeView extends Notice{

	private String writerName;
	private int commentCnt;
	
	public NoticeView() {
		this(null, null, null, null, null, 0, null, 0);
	}
	
	public NoticeView(String id, String title, String writerId, String content, Date regDate, int hit, String writerName, int commentCnt) {
		super(id, title, writerId, content, regDate, hit);
		this.writerName = writerName;
		this.commentCnt = commentCnt;
	}
	
	public String getWriterName() {
		return writerName;
	}



	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}



	public int getCommentCnt() {
		return commentCnt;
	}



	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}




	
}
