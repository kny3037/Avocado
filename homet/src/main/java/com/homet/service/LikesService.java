package com.homet.service;

import java.util.List;

import com.homet.model.Likes;
import com.homet.model.PageDto;

public interface LikesService {

	int insert(Likes dto);
	int delete(int lidx);
	List<Likes>getList(PageDto dto);
	int selectByFidx(int fidx);
	int selectByNickname(String nickname);
}
