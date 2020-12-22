package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.PaymentVO;



@Repository("PaymentDAO")
public class PaymentDAOImpl implements PaymentDAO {

	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertPayment(PaymentVO vo) {
		System.out.println("===> Mybatis insertPayment() 호출");
		mybatis.insert("PaymentDAO.insert_payment", vo);

	}

	public List<PaymentVO> getPaymentList(PaymentVO vo) {
		System.out.println("===> DAO getPaymentList() 호출");
		return mybatis.selectList("PaymentDAO.selectPayment", vo);
	}
	
	public void updatetotalHeart(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis updatePayment() 호출");
		mybatis.update("PaymentDAO.update_heart", vo);
		
	}

}
