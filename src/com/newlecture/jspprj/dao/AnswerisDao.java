package com.newlecture.jspprj.dao;

import java.util.List;

import com.newlecture.jspprj.entity.Answeris;
import com.newlecture.jspprj.entity.AnswerisView;


public interface AnswerisDao {
	int insert(Answeris answeris);
	int update(Answeris answeris);
	int delete(String id);
	
	List<AnswerisView> getList(int page);
	AnswerisView get(String id);
	int getCount();
}
