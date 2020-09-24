package com.dteam.app.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dteam.app.dao.HjDao;
import com.dteam.app.dto.MdDto;

@Controller
public class HjController {


	@RequestMapping ("/anMdpull")
	public String anMdpull (String category, String member_id, Model model) {
		HjDao hjdao = new HjDao();
		//ArrayList<MdDto> list = hjdao.anMdpull(category, member_id);
		ArrayList<MdDto> list = hjdao.anMdpull(category, member_id);
		model.addAttribute("list", list);
		return "anMdpull";
	}
	
	
}
