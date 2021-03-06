package com.food.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.domain.PagingVO;
import com.food.domain.QnaBoardVO;

@Repository("qnaboarddao")
public class QnaBoardDAOImpl implements QnaBoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QnaBoardVO> selectqna(QnaBoardVO vo) {
		System.out.println("selectqna dao 도착");
		return mybatis.selectList("qnaboardDAO.selectqna",vo);
	}

	@Override
	public void insertqna(QnaBoardVO vo) {
		System.out.println("insertqna dao 도착");
		mybatis.insert("qnaboardDAO.insertqna",vo);
	}

	@Override
	public int countBoard() {
		System.out.println("countBoard 다오");
		int result = mybatis.selectOne("qnaboardDAO.countBoard");
		System.out.println("countBoard : "+result);
		return result; 
	}

	@Override
	public List<QnaBoardVO> selectBoard(PagingVO vo) {
		System.out.println("selectBoard 다오");
		List<QnaBoardVO> result =  mybatis.selectList("qnaboardDAO.selectBoard",vo);
		System.out.println("selectBoard : "+result);
		return result;
	}

	@Override
	public QnaBoardVO viewDetail(QnaBoardVO vo) {
		System.out.println("viewDetail 다오");
		return mybatis.selectOne("qnaboardDAO.detailBoard",vo);
	}

	@Override
	public void modifyQna(QnaBoardVO vo) {
		System.out.println("modifyQna 다오");
		mybatis.update("qnaboardDAO.qnaUpdate",vo);
		
	}

	@Override
	public void deleteQna(QnaBoardVO vo) {
		System.out.println("deleteQna 다오");
		mybatis.delete("qnaboardDAO.qnaDelete",vo);
	}

	@Override
	public int searchCount(String searchType, String keyword) {
		System.out.println("searchCount 다오");
		HashMap map = new HashMap();
		map.put("searchType", searchType);
		map.put("keyword",keyword);
		
		return mybatis.selectOne("qnaboardDAO.searchCount",map);
	}
	
	


}
