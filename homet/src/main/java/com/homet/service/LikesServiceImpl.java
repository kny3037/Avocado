package com.homet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homet.dao.LikesMapper;
import com.homet.model.Likes;
import com.homet.model.FPageDto;

@Service
public class LikesServiceImpl implements LikesService{

	@Autowired
	LikesMapper dao;
	
	@Override
	public int insert(Likes dto) {
		return dao.insert(dto);
	}

	@Override
	public List<Likes> getList(FPageDto dto) {
		// TODO Auto-generated method stub
		return dao.getList(dto);
	}

	@Override
	public int selectByFidx(int fidx) {
		// TODO Auto-generated method stub
		return dao.selectByFidx(fidx);
	}

	@Override
	public int selectByNickname(String nickname) {
		// TODO Auto-generated method stub
		return dao.selectByNickname(nickname);
	}

	@Override
	public int delete(Likes dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int selectByNicknameFidx(Likes dto) {
		// TODO Auto-generated method stub
		return dao.selectByNicknameFidx(dto);
	}




	
	
	
	
}
