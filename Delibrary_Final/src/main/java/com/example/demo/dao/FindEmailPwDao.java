package com.example.demo.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import com.example.demo.db.CustomerManager;
import com.example.demo.db.EmailPwCheckManager;

@Repository
public class FindEmailPwDao {
	
	//로그인: 가입 이메일 찾기
	public String FindEmail(HashMap map) {
		return EmailPwCheckManager.findEmail(map);
	}
	
	//회원가입: 이메일 중복체크
	public String checkEmail(String email) {
		return EmailPwCheckManager.checkEmail(email);
	}
}
