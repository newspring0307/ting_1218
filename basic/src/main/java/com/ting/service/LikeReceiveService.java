package com.ting.service;

import java.util.List;

import com.ting.domain.LikeReceiveVO;

public interface LikeReceiveService {
	void insertLikeReceive(LikeReceiveVO vo);

	// 湲� �닔�젙
	void updateLikeReceive();

	// 湲� �궘�젣
	void deleteLikeReceive(LikeReceiveVO vo);

	// 湲� �긽�꽭 議고쉶
	LikeReceiveVO getLikeReceive(LikeReceiveVO vo);

	// 湲� 紐⑸줉 議고쉶
	List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo);
	

	List<LikeReceiveVO> getLikeSendList(LikeReceiveVO vo);
	

}
