package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.BoardDAOImpl;
import com.food.domain.BoardVO;
import com.food.domain.MemberVO;
import com.food.domain.PagingVO;


@Service("boardService")
public class boardServiceImpl implements boardService {
	
	@Autowired
	private BoardDAOImpl boardDAO;

	@Override
	public int insertBoard(BoardVO vo) {

		return boardDAO.insertBoard(vo);
	}

	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}

	@Override
	public int countBoard(BoardVO vo) {
		
		return boardDAO.countBoard(vo);
	}

	@Override
	public List<BoardVO> selectBoard(BoardVO vo,PagingVO pvo, String searchType, String keyword) {
		
		return boardDAO.selectBoard(vo,pvo,searchType,keyword);
	}

	@Override
	public int deleteBoard(BoardVO vo) {
		
		return boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO boardView(BoardVO vo) {
		
		return boardDAO.boardView(vo);
	}

	@Override
	public int searchCount(String searchType, String keyword) {
		
		return boardDAO.searchCount(searchType,keyword);
	}

	//밥친구 게시판 참여하기 버튼 눌렀을때
	@Override
	public int mealjoin(BoardVO vo) {
		
		return boardDAO.mealjoin(vo);
	}

	@Override
	public List<BoardVO> selectReview(BoardVO vo, PagingVO pvo, String searchType, String keyword) {
		
		return boardDAO.selectReview(vo,pvo,searchType,keyword);
	}

	@Override
	public  List<BoardVO> searchboard(MemberVO mvo) {
		return boardDAO.searchboard(mvo);  
	}

	@Override
	public void insertReply(BoardVO vo) {
		boardDAO.insertReply(vo);
	}

	@Override
	public List<BoardVO> selectReply(BoardVO vo) {
		return boardDAO.selectReply(vo);
	}

	//밥친구 게시판 취소하기 버튼 눌렀을때
	@Override
	public int mealcancel(BoardVO vo) {
		return boardDAO.mealcancel(vo);
	}

	@Override
	public void modifyReply(BoardVO vo) {
		boardDAO.modifyReply(vo);
		
	}

	@Override
	public void deleteReply(BoardVO vo) {
		boardDAO.deleteReply(vo);
		
	}

	//밥친구 게시판 전체글 
	@Override
	public List<BoardVO> selectmeal(BoardVO vo) {
		
		return boardDAO.selectmeal(vo);
	}

}
