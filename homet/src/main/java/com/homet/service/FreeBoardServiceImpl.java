package com.homet.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homet.dao.FreeboardMapper;
import com.homet.model.Freeboard;
import com.homet.model.PageDto;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {
	private static final Logger logger = LoggerFactory.getLogger(FreeBoardServiceImpl.class);
	
	@Autowired
	FreeboardMapper dao;
	
	public void FreeboardMapperImpl(FreeboardMapper dao){
		this.dao = dao;
		}
	
	@Override
	public int insert(Freeboard dto) {
		logger.info("insert");
		return dao.insert(dto);
	}

	@Override
	public int update(Freeboard dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int fidx) {
		return dao.delete(fidx);
	}

	@Override
	public Freeboard getBoardOne(int fidx) {
		return dao.getBoardOne(fidx);
	}

	@Override
	public int getCount() {
		return dao.getCount();
	}

	@Override
	public List<Freeboard> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Freeboard> getPagelist(PageDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int searchCount(Map<String, Object> map) {
		return dao.searchCount(map);
	}

	@Override
	public List<Freeboard> searchList(PageDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
