package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.TingBoardDAOImpl;
import com.ting.domain.TingBoardVO;

@Service("tingBoardService")
public class TingBoardServiceImpl implements TingBoardService {

	@Autowired
	private TingBoardDAOImpl tingBoardDAO;
	
	public void insertBoard(TingBoardVO vo) {
		tingBoardDAO.insertBoard(vo);

	}
 
	public void updateBoard(TingBoardVO vo) {
		tingBoardDAO.updateBoard(vo);

	}

	public void deleteBoard(TingBoardVO vo) {
		tingBoardDAO.deleteBoard(vo);

	}

	public TingBoardVO getBoard(TingBoardVO vo) {
		
		return tingBoardDAO.getBoard(vo);
	}

	public List<TingBoardVO> getBoardList(TingBoardVO vo) {
		
		List<TingBoardVO> result = tingBoardDAO.getBoardList(vo);
		 return result;
	}

} 

/*
public TingBoardVO getBoard(TingBoardVO vo) {
    TingBoardVO result = tingBoardDAO.getBoard(vo);
    System.out.println(result.get?());
    return result;
 } 
 */