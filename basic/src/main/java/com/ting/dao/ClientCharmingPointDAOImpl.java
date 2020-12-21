package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientCharmingPointVO;;

@Repository("clientCharmingPointDAO")
public class ClientCharmingPointDAOImpl implements ClientCharmingPointDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	public void insertClientCharmingPoint(ClientCharmingPointVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("ClientCharmingPointDAO.insertClientCharmingPoint", vo);
	}
	
	
}
