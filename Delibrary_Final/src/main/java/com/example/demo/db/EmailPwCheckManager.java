package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.example.demo.vo.CustomerVO;

public class EmailPwCheckManager {
	
public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/example/demo/db/sqlMapConfig.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("static 오류: "+e.getMessage());
		}
	}
	
	//로그인: 가입 이메일 찾기
	public static String findEmail(HashMap map) {
		SqlSession session = sqlSessionFactory.openSession();
		CustomerVO b = null;
		b = session.selectOne("emailPwCheck.findEmail", map);
		return b.getEmail();
	}
	
	//회원가입: 이메일 중복체크
	public static String checkEmail(String email) {
		SqlSession session = sqlSessionFactory.openSession();
		CustomerVO b = null;
		b = session.selectOne("emailPwCheck.checkEmail", email);
		int re = -1;
		if(b != null) {
			re = 2;
		}
		String result = re + "";
		return result;
	}

	
}
