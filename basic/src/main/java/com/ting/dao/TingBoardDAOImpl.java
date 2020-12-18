package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.TingBoardVO;

@Repository("tingoardDAO")
public class TingBoardDAOImpl implements TingBoardDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;

	
	public void insertBoard(TingBoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("TingBoardDAO.insertBoard", vo);
	}
	
	public void updateBoard(TingBoardVO vo) {
	      System.out.println(vo.getTitle());
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("TingBoardDAO.updateBoard", vo);

	}
	 
	public void deleteBoard(TingBoardVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("TingBoardDAO.deleteBoard", vo);

	}
	
	public TingBoardVO getBoard(TingBoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return mybatis.selectOne("TingBoardDAO.getBoard", vo);
	}
	
	public List<TingBoardVO> getBoardList(TingBoardVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("TingBoardDAO.getBoardList", vo);
	}

}
