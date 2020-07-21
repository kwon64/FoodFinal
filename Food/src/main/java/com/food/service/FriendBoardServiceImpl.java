package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.FriendBoardDAO;
import com.food.domain.FriendBoardVO;

@Service("friendBoardService")
public class FriendBoardServiceImpl implements FriendBoardService{

	
	@Autowired
	FriendBoardDAO friendBoarddao;
	
	//밥친구 게시판 글 등록하기 
	@Override
	public Integer friendsave(FriendBoardVO vo) {
		
		return friendBoarddao.friendsave(vo);
	}

	//밥친구 게시판 글 목록 가져오기 
	@Override
	public List<FriendBoardVO> getmealFriends() {
		
		return friendBoarddao.getmealFriends();
	}

	//밥친구 게시판 글 상세보기 
	@Override
	public FriendBoardVO mealboardView(FriendBoardVO vo) {
		
		return friendBoarddao.mealboardView(vo);
	}

}
