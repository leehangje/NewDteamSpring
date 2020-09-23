package com.dteam.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.dteam.app.dao.JEDao;
import com.dteam.app.dto.MdDto;

public class AMainSelectCommand implements ACommand{

	@Override
	public void execute(Model model) {
				
		JEDao jeDao = new JEDao();
		
		ArrayList<MdDto> mdDtos = jeDao.anMainSelect();
		
		model.addAttribute("anMainSelect", mdDtos);
	}

}
