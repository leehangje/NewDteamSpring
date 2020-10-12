package com.hanul.dteam;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.MainPage;
import main.MainServiceImpl;
import main.MainVO;

@Controller
public class MainController {
	@Autowired private MainServiceImpl service;
	@Autowired private MainPage page;
	
	//메인 목록화면 요청
	@RequestMapping("/list.ma")
	public String list(Model model, HttpSession session
			, String search, String keyword
			, @RequestParam(defaultValue = "list") String viewType 
			, @RequestParam(defaultValue = "10") int pageList
			, @RequestParam(defaultValue = "1") int curPage) {
		
		//DB에서 방명록 정보를 조회해와 목록화면에 출력
		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);
		page.setPageList(pageList);
		page.setViewType(viewType);
		model.addAttribute("page", service.main_list(page));
		return "main/list";
	}
	
	@RequestMapping("/detail.ma")
	public String detail(Model model, String md_serial_number){
		model.addAttribute("vo", service.main_detail(md_serial_number));
		return "main/detail";
	}
}
