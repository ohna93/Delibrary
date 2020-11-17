package com.example.demo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.FindEmailPwDao;
import com.google.gson.Gson;

@Controller
public class FindEmailPwController {
	
	//풀리퀘테스트
	@Autowired
	private FindEmailPwDao dao;

	public void setDao(FindEmailPwDao dao) {
		this.dao = dao;
	}
	
//	//이메일 찾기
//	@RequestMapping(value = "/findEmail", 
//			produces = "application/json;charset=utf8")
//	@ResponseBody
//	public String findEmail(String name, String m_phone) {
//		Gson gson = new Gson();
//		HashMap map = new HashMap();
//		map.put("name", name);
//		map.put("m_phone", m_phone);
//		String email = dao.FindEmail(map);
//		return gson.toJson(email);
//	}	
	
	//로그인: 가입 이메일 찾기
	@RequestMapping(value="/findEmail.do", method=RequestMethod.POST)
	public ModelAndView findEmail(String name, String m_phone) {
		System.out.println("이메일찾기 컨트롤러 동작함");
		System.out.println("이름:: " + name);
		System.out.println("전번:: " + m_phone);
		
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		map.put("name", name);
		map.put("m_phone", m_phone);
		String email = dao.FindEmail(map);
		if(email==null) {
			mav.setViewName("LoginPage.do");
			mav.addObject("msg","msg1");
		}
		mav.addObject("email",email);
		return mav;
	}
	
	//회원가입: 이메일 중복체크
	@RequestMapping(value = "/emailCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String emailCheck(String email) {
		System.out.println("중복체크 동작함");
		System.out.println(email);
		String re = dao.checkEmail(email);
		Gson gson = new Gson();
		return gson.toJson(re);
	}			
}
