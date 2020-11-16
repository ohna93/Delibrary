package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ReplyManager;
import com.example.demo.vo.ReplyVO;

@Repository
public class ReplyDAO {
	
	
	//댓글 불러오기
	public List<ReplyVO> findAll(HashMap map){
		return ReplyManager.findAll(map);
	}
	
	public int getNextNo() {
		return ReplyManager.getNextNo();
	}
	
	//댓글 작성
	public int insert(HashMap map) {
		return ReplyManager.insert(map);
	}
	
//	public int updateStep(HashMap map) {
//		return PostManager.updateStep(map);
//	}
	
//	public int delete(HashMap map) {
//		return PostManager.delete(map);
//	}
//	
//	public int update(BoardVo b) {
//		return PostManager.update(b);
//	}
}
