package com.hanul.dteam;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.MainServiceImpl;
import main.MainVO;

@Controller
public class MainController {
	@Autowired private MainServiceImpl service;
	
	//메인화면
	@RequestMapping("/list.ma")
	public String list(Model model) {
		//DB에서 고객목록을 조회해와 목록화면에 출력할 수 있도록 한다.
		List<MainVO> list = service.main_list();
		model.addAttribute("list", list);
		return "main/list";
	}
	
	@RequestMapping("/detail.ma")
	public String detail(MainVO vo){
		
		return "main/detail";
	}
}
