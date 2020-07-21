package com.food.dao;

import java.util.List;

import com.food.domain.FriendBoardVO;
import com.food.domain.PagingVO;

public interface FriendBoardDAO {

	//밥친구게시판 글 등록하기 
	public Integer friendsave(FriendBoardVO vo);
	
	//밥친구게시판 글 목록 가져오기
	public List<FriendBoardVO> getmealFriends(PagingVO vo);
	
	//밥친구게시판 글 상세보기 
	public FriendBoardVO mealboardView(FriendBoardVO vo);
	
	//밥친구 게시판 글 전체수 
	public Integer friendBoardcount();
	
}
