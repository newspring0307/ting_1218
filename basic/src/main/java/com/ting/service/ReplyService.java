package com.ting.service;

import java.util.List;

import com.ting.domain.ReplyVO;

public interface ReplyService {

	// 댓글 조회
	public List<ReplyVO> getList(ReplyVO vo);

	// 댓글 조회
	public void write(ReplyVO vo);

	// 댓글 수정
	public void modify(ReplyVO vo);

	// 댓글 삭제
	public void delete(ReplyVO vo);
}
