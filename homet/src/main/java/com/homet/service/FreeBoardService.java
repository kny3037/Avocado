package com.homet.service;

import java.util.List;
import java.util.Map;

import com.homet.model.Freeboard;
import com.homet.model.FPageDto;

public interface FreeBoardService {

	int insert(Freeboard dto); 
	int update(Freeboard dto);  
	int delete(int fidx);
	Freeboard getBoardOne (int fidx);
	int getCount();
	List<Freeboard>getAll();  
	List<Freeboard> getPagelist(FPageDto dto);
	int searchCount(Map<String,Object> map);
	List<Freeboard> searchList(FPageDto dto);
	int like_cnt(int fidx);

	
}
