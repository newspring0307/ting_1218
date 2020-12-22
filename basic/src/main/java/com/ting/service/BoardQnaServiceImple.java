package com.ting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.BoardQnaInter;
import com.ting.domain.BoardQnaVO;

@Service("boardQnaService")
public class BoardQnaServiceImple implements BoardQnaService{

	@Autowired
	private BoardQnaInter boardQnsInter;
	
	@Override
	public void boardQnaAdd(BoardQnaVO vo) {
		System.out.println("Test"+vo.toString());
		boardQnsInter.boardQnaAdd(vo);
		
	}

}
