package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.BookDAO;
import com.example.demo.dao.BorrowDAO;
import com.example.demo.dao.FolderDAO;
import com.example.demo.dao.PostDAO;


@Controller
public class BookcartController {
	@Autowired
	BorrowDAO dao;
	

	public void setDao(BorrowDAO dao) {
		this.dao = dao;
	}


	@RequestMapping("/BookCart.do")
	public void list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		int cust_no  =  (int) session.getAttribute("cust_no");
		HashMap map=new HashMap();
		map.put("cust_no", cust_no);
		
		model.addAttribute("b", dao.selectBycust_No(map));

	}

}
