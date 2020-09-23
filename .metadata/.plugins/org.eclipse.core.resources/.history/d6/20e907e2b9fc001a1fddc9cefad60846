package com.dteam.app.command;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;
import com.dteam.app.dto.MemberDto;

public class ADetailCommand implements ACommand{

	@Override
	public void execute(Model model) {
		
		
		ANDao adao = new ANDao();
		
		String member_id = (String) model.asMap().get("member_id");
		
		System.out.println("member_id : " + member_id);
		
		 
		MemberDto adto = adao.anDetail(member_id);
		
		model.addAttribute("anDetail", adto);
	}

}
