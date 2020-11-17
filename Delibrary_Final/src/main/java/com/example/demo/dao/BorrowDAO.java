package com.example.demo.dao;


import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.BookManager;
import com.example.demo.db.BorrowManager;
import com.example.demo.vo.BookVO;
import com.example.demo.vo.BorrowVO;

@Repository
public class BorrowDAO {
	
	 public int insertBorrow(BorrowVO b) {
		return BorrowManager.insertBorrow(b);
	}
	
	
	public int getNextNo() {
		return BorrowManager.getNextNo();
	}
	//북카트 목록 출력
	public List<BorrowVO> selectBycust_No(HashMap map){
		return BorrowManager.selectBycust_No(map);
	}


}
