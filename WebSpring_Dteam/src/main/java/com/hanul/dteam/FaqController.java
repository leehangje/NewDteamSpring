package com.hanul.dteam;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FaqController {

	//FAQ(자주묻는 질문) 목록화면 요청
	@RequestMapping("/list.fa")
	public String list(Model model, @RequestParam(defaultValue = "1") int curPage, HttpSession session
			, String search, String keyword) {
		
		
		
		return "faq/list";
	}
	
	
	
	
}//class
