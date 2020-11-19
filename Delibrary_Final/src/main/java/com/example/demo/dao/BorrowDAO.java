package com.example.demo.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.BorrowManager;
import com.example.demo.vo.BorrowVO;

@Repository
public class BorrowDAO {
	
	 public int insertBorrow(BorrowVO b) {
		return BorrowManager.insertBorrow(b);
	}
	
	
	public int getNextNo() {
		return BorrowManager.getNextNo();
	}
	

	// 모든 정보 가져오기[재성]
	public List<BorrowVO> findAll() {
		return BorrowManager.findAll();
	}
}
