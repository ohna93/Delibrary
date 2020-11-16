package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.dao.PostDAO;
import com.example.demo.dao.ReplyDAO;
import com.example.demo.vo.CustomerVO;
import com.example.demo.vo.PostVO;

@RestController
public class ReplyController {

	@Autowired
	private ReplyDAO re_dao;
	public void setRe_dao(ReplyDAO re_dao) {
		this.re_dao = re_dao;
	}
	@Autowired
	private PostDAO dao;
	public void setDao(PostDAO dao) {
		this.dao = dao;
	}
	@Autowired
	private CustomerDAO c_dao;
	public void setC_dao(CustomerDAO c_dao) {
		this.c_dao = c_dao;
	}
   
	//새 댓글 작성
	@RequestMapping(value="/replyInsert.do", method = RequestMethod.POST)
	public String insert(PostVO pvo, int group,int cust_no, int p_id, int p_no, String re_content, HttpServletRequest request) {
		int re=-1;
		String re_writer=c_dao.findByCust_No(cust_no).getNickname();
		
		int nextNo=re_dao.getNextNo();
		HashMap map=new HashMap();
		map.put("group", group);
		map.put("re_no", nextNo);
		map.put("p_id", p_id);
		map.put("p_no", p_no);
		map.put("re_writer", re_writer);
		map.put("re_content", re_content);
		map.put("cust_no", cust_no);
		
		System.out.println("REPLY INSERT map :  "+ map);
		
		re=re_dao.insert(map);
		System.out.println("REPLY INSERT re   :   "+re);
		System.out.println();
		return Integer.toString(re);
	}
	
//	//댓글 수정
//	@RequestMapping(value="postUpdate.do", method = RequestMethod.GET)
//	public void update(int group, int p_id, int cust_no, String nickname, Model model) {
//		HashMap map=new HashMap();
//		map.put("p_id", p_id);
//		map.put("cust_no", cust_no);
//		map.put("group", group);
//	      
//		model.addAttribute("group", group);
//		model.addAttribute("c", c_dao.findByCust_No(cust_no));
//		model.addAttribute("f", dao.findById(map));
//	}
//	@RequestMapping(value="postUpdate.do", method = RequestMethod.POST)
//	public ModelAndView update(HttpServletRequest request, PostVO m, int group, MultipartFile uploadFile) {
//
//		ModelAndView mav=new ModelAndView("redirect:/postDetail.do?p_id="+m.getP_id()+"&&group="+group);
//		int re = dao.update(m);
//		if(re<=0) {
//			mav.addObject("msg", "게시글 수정 실패");
//			mav.setViewName("error");
//  		}
//  		return mav;
//	}
//   
//	//댓글삭제
//	@RequestMapping(value = "postDelete.do", method = RequestMethod.POST)
//	@ResponseBody
//	public String delete(int p_id, int cust_no, int group, HttpServletRequest request) {
//		int re=-1;
//				
//		System.out.println("DEL 받아온 cust_no :  "+cust_no);
//		System.out.println("DEL 받아온 p_id  :  "+p_id);
//		
//		
//		HashMap map=new HashMap();
//		map.put("group", group);
//		map.put("p_id",p_id);
//		map.put("cust_no",cust_no);
//		
//		System.out.println("DEL map :  "+ map);
//		
//		re=dao.delete(map);
//		
//		System.out.println("DEL re:   "+re);
//		return Integer.toString(re);
//	}
//	
}
