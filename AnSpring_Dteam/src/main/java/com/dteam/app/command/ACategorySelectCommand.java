package com.dteam.app.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;
import com.dteam.app.dto.MdDto;



public class ACategorySelectCommand implements ACommand{

	@Override
	public void execute(Model model) {
		ANDao adao = new ANDao();

		String category = (String)model.asMap().get("category");
		
		System.out.println("category" + category);
		
		//ArrayList<MdDto> adtos = adao.anCategorySelect(category);
		ArrayList<MdDto> adtos = adao.anCategorySelect(category);
		
		model.addAttribute("anCategorySelect", adtos); 
		
	}

}
