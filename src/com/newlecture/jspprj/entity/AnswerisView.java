package com.newlecture.jspprj.entity;

import java.util.Date;

public class AnswerisView extends Answeris {
	
	private int commentCount;
	
	public AnswerisView() {
		
	}

	public AnswerisView(
			String id, 
			String title, 
			String language, 
			String platform, 
			String runtime, 
			String errorCode,
			String errorMessage, 
			String situation, 
			String triedToFix, 
			String reason, 
			String howToFix,
			String writerId, 
			Date regDate, 
			int hit, 
			String attachedFile,
			int commentCount) {
		super(id, title, language, platform, runtime, errorCode, errorMessage, situation, triedToFix, reason, howToFix, writerId,
				regDate, hit, attachedFile);
		this.commentCount = commentCount;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	
}
