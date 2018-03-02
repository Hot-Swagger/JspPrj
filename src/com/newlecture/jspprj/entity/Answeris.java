package com.newlecture.jspprj.entity;

import java.util.Date;

public class Answeris {
	private String id;
	private String title;
	private String language;
	private String platform;
	private String runtime;
	private String errorCode;
	private String errorMessage;
	private String situation;
	private String triedToFix;
	private String reason;
	private String howToFix;
	private String writerId;
	private Date regDate;
	private int hit;
	
	public Answeris() {
		
	}
	
	public Answeris(
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
			int hit
			)
	{
		this.id = id;
		this.title = title;
		this.language = language;
		this.platform = platform;
		this.runtime = runtime;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.situation = situation;
		this.triedToFix = triedToFix;
		this.reason = reason;
		this.howToFix = howToFix;
		this.writerId = writerId;
		this.regDate = regDate;
		this.hit = hit;
	}
	
	public Answeris(
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
			String writerId
			)
	{
		this.title = title;
		this.language = language;
		this.platform = platform;
		this.runtime = runtime;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.situation = situation;
		this.triedToFix = triedToFix;
		this.reason = reason;
		this.howToFix = howToFix;
		this.writerId = writerId;
	}
	
	public Answeris(
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
			String writerId
			)
	{
		this.id = id;
		this.title = title;
		this.language = language;
		this.platform = platform;
		this.runtime = runtime;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.situation = situation;
		this.triedToFix = triedToFix;
		this.reason = reason;
		this.howToFix = howToFix;
		this.writerId = writerId;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	public String getTriedToFix() {
		return triedToFix;
	}
	public void setTriedToFix(String triedToFix) {
		this.triedToFix = triedToFix;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getHowToFix() {
		return howToFix;
	}
	public void setHowToFix(String howToFix) {
		this.howToFix = howToFix;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
