package com.newlecture.jspweb.dao;

import java.util.List;

import com.newlecture.jspweb.entity.Notice;
import com.newlecture.jspweb.entity.NoticeView;

public interface NoticeDao2 {
	/*
	List<Notice> getList(String query);
	List<Notice> getList(int page);
	List<Notice> getList(int page, String field, String query);
	List<Notice> getList();
	
	Notice get(String id);
	Notice getPrev(String id);
	Notice getNext(String id);
	*/
	List<NoticeView> getList();
	
	NoticeView get(String id);
	NoticeView getPrev(String id);
	NoticeView getNext(String id);
	
	int insert(Notice notice);
	int update(Notice notice);
	int delete(String id);
}
