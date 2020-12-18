package com.ting.service;

import java.util.List;

import com.ting.domain.LikeReceiveVO;

public interface LikeReceiveService {
	void insertLikeReceive(LikeReceiveVO vo);

	// 글 수정
	void updateLikeReceive();

	// 글 삭제
	void deleteLikeReceive(LikeReceiveVO vo);

	// 글 상세 조회
	LikeReceiveVO getLikeReceive(LikeReceiveVO vo);

	// 글 목록 조회
	List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo);
	

}
