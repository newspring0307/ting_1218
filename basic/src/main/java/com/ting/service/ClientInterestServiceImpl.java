package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.ClientInterestDAOImpl;
import com.ting.domain.ClientInterestVO;


@Service("clientInterestService")
public class ClientInterestServiceImpl implements ClientInterestService{

	//dao불러오는곳
	@Autowired
	private ClientInterestDAOImpl clientInterestDAO;
	
	//메소드시작
	public void insertClientInterest(ClientInterestVO vo) {

		clientInterestDAO.insertClientInterest(vo);
	}
	
	
}
