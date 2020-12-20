package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.PageVO;
import com.ting.domain.TingBoardVO;

@Repository("TingBoardDAO")
public class TingBoardDAOImpl implements TingBoardDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(TingBoardVO vo) {
	      System.out.println(vo.getContent());
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
	
	
	@Override
	public List<TingBoardVO> getList(PageVO svo){ //nowPage등으로 연산이 된  start,end
		return mybatis.selectList("TingBoardDAO.list", svo);
	}
	
	@Override
	public int getTotalCount() {//전체 데이터를 기준으로 페이지를 나눌것이기 때문에..
		return mybatis.selectOne("TingBoardDAO.totalCount");
	}	
}
