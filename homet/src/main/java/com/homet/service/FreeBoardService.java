package com.homet.service;

import java.util.List;
import java.util.Map;

import com.homet.model.Freeboard;
import com.homet.model.Fpagdto;

public interface FreeBoardService {

	int insert(Freeboard dto); 
	int update(Freeboard dto);  
	int delete(int fidx);
	Freeboard getBoardOne (int fidx);
	int getCount();
	List<Freeboard>getAll();  
	List<Freeboard> getPagelist(Fpagdto dto);
	int searchCount(Map<String,Object> map);
	List<Freeboard> searchList(Fpagdto dto);
	int like_cnt(int fidx);

	
}
