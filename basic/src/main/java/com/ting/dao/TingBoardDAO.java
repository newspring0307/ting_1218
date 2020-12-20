package com.ting.dao;

import java.util.List;

import com.ting.domain.PageVO;
import com.ting.domain.TingBoardVO;


public interface TingBoardDAO {

	public void insertBoard(TingBoardVO vo);

	// 글 수정
	public void updateBoard(TingBoardVO vo);

	// 글 삭제
	public void deleteBoard(TingBoardVO vo);

	// 글 상세 조회
	public TingBoardVO getBoard(TingBoardVO vo);

	// 글 목록 조회
	public List<TingBoardVO> getBoardList(TingBoardVO vo);
			
	public List<TingBoardVO> getList(PageVO svo);
	  
	public int getTotalCount();
	 

	
}

