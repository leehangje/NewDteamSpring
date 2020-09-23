package com.dteam.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;
import com.dteam.app.dto.MdDto;

public class AMainSelectCommand implements ACommand{

	@Override
	public void execute(Model model) {
				
		ANDao adao = new ANDao();	
		
		 
		ArrayList<MdDto> mdDtos = adao.anMainSelect();
		
		model.addAttribute("anMainSelect", mdDtos);
	}

}
