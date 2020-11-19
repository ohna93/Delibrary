package com.example.demo.db;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BookVO;
import com.example.demo.vo.CustomerVO;
import com.example.demo.vo.PostVO;

public class DBManager {
	
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/example/demo/DB/sqlMapConfig.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("static 오류: "+e.getMessage());
		}
	}
	
	// Ȩȭ�� �缭��õ���� �̾ƿ��� �޼ҵ�
	public static List<BookVO> getStaffRecommend() {
		List<BookVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getStaffRecommend");
		session.close();
		return list;
	}
	
	// Ȩȭ�� ���۵��� �̾ƿ��� �޼ҵ�
	public static List<BookVO> getNewRecommend() {
		List<BookVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getNewRecommend");
		session.close();
		return list;
	}
	
	// Ȩȭ�� �Խñ� �̾ƿ��� �޼ҵ�
	public static List<PostVO> getHomePost(int group) {
		List<PostVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getHomePost", group);
		session.close();
		return list;
	}
	
	// �α��� �ÿ� ȸ�������� �ִ��� Ȯ���ϴ� �޼ҵ�
	public static CustomerVO getCustInfo(CustomerVO custVO) {
		CustomerVO vo = null;
		SqlSession session = sqlSessionFactory.openSession();
		vo = session.selectOne("main.getCustInfo", custVO);
		return vo;
	}
	
	// �Խ������� �̵�
	public static List<PostVO> getpostList(Map map) {
		List<PostVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getpostList", map);
		return list;
	}
	
	// ����¡ ó���� ���� ��� ���ù� ������ �޾ƿ��� �޼ҵ�
	public static int getTotalCount(Map map) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();
		re = session.selectOne("main.getTotalCount", map);
		return re;
	}
}