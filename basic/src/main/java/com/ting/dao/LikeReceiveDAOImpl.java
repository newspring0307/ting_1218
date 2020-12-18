package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.LikeReceiveVO;

@Repository("likeReceiveDAO")
public class LikeReceiveDAOImpl implements LikeReceiveDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	public void insertLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis insertLikeReceive() 호출");
		mybatis.insert("LikeReceiveDAO.insertLikeReceive", vo);
	}

	public void updateLikeReceive() {
		System.out.println("===> Mybatis updateLikeReceive() 호출");
		mybatis.update("LikeReceiveDAO.updateLikeReceive");
	}

	public void deleteLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis deleteLikeReceive() 호출");
		mybatis.delete("LikeReceiveDAO.deleteLikeReceive", vo);
	}

	public LikeReceiveVO getLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis getLikeReceive() 호출");
		return mybatis.selectOne("LikeReceiveDAO.getLikeReceive", vo);
	}

	public List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo) {
		System.out.println("===> Mybatis getLikeReceiveList() 호출");
		return mybatis.selectList("LikeReceiveDAO.getLikeReceiveList", vo);
	}

}
