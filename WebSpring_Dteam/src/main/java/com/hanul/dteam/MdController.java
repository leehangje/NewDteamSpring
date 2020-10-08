package com.hanul.dteam;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.CommonService;
import merchandise.MdServiceImpl;

@Controller
public class MdController {
	
	@Autowired private MdServiceImpl service;
	@Autowired private CommonService common;

	//상품 상세페이지화면 요청
	@RequestMapping ("/detail.me")
	public String MdDetail(Model model, String md_serial_number) {
		return "merchandise/detail";
	}
	
	//상품 등록처리 요청
	
	
	
}
