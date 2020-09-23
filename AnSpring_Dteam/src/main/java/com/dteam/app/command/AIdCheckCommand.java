package com.dteam.app.command;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;
import com.dteam.app.dto.MemberDto;

public class AIdCheckCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String member_id = (String)model.asMap().get("member_id");
		
		ANDao adao = new ANDao();
		MemberDto adto = adao.anIdCheck(member_id);
		
		model.addAttribute("anIdCheck", adto);
	} //execute()
}
