package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BookVO;
import com.example.demo.vo.BorrowVO;

public class BorrowManager {
	
public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/example/demo/db/sqlMapConfig.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("static 예외발생: "+e.getMessage());
		}
	}
	
	
	public static int insertBorrow(BorrowVO b) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("borrow.insertBorrow",b);
		session.close();
		return re;
	}
	
	
	public static int getNextNo() {
		int n = -1;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("borrow.getNextNo");
		session.close();
		return n;
	}
	//북카트 출력



	public static List<BorrowVO> selectBycust_No(HashMap map) {
		// TODO Auto-generated method stub
		List<BorrowVO> list = null;
		SqlSession session=sqlSessionFactory.openSession();
		list=session.selectList("borrow.selectBycust_No", map);
		session.close();
		return list;
	}
	
	
}
