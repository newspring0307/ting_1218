package com.ting.service;

import java.util.List;

import com.ting.domain.TingBoardVO;

public interface TingBoardService {
	
	void insertBoard(TingBoardVO vo);

	// 글 수정
	void updateBoard(TingBoardVO vo);

	// 글 삭제
	void deleteBoard(TingBoardVO vo);
 
	// 글 상세 조회
	TingBoardVO getBoard(TingBoardVO vo);

	// 글 목록 조회
	List<TingBoardVO> getBoardList(TingBoardVO vo);
}
