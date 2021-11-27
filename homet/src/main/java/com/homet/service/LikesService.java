package com.homet.service;

import java.util.List;

import com.homet.model.Likes;
import com.homet.model.FPageDto;

public interface LikesService {

	int insert(Likes dto);
	int delete(Likes dto);
	List<Likes>getList(FPageDto dto);
	int selectByFidx(int fidx);
	int selectByNickname(String nickname);
	int selectByNicknameFidx(Likes dto);
}
