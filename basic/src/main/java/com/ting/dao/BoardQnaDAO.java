package com.ting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.BoardQnaVO;

@Repository("boardQnsInter")
public class BoardQnaDAO implements BoardQnaInter{

	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void boardQnaAdd(BoardQnaVO vo) {
		mybatis.insert("BoardQnaVO.add", vo);
		
	}

}
