package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.ClientCharmingPointDAOImpl;
import com.ting.domain.ClientCharmingPointVO;;


@Service("clientCharmingPointService")
public class ClientCharmingPointServiceImpl implements ClientCharmingPointService{

	//dao불러오는곳
	@Autowired
	private ClientCharmingPointDAOImpl clientCharmingPointDAO;
	
	//메소드시작
	public void insertClientCharmingPoint(ClientCharmingPointVO vo) {

		clientCharmingPointDAO.insertClientCharmingPoint(vo);
	}
	
	
}
