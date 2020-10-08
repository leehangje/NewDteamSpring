package com.hanul.dteam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import merchandise.MdServiceImpl;

@Controller
public class MdController {
	
	@Autowired private MdServiceImpl service;
	
	//상품 상세페이지화면 요청
	@RequestMapping ("/detail.me")
	public String MdDetail() {
		return "merchandise/detail";
	}
	
	//상품 등록처리 요청
	
	
	
}
