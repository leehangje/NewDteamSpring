package com.dteam.app.command;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;
import com.dteam.app.dto.MdDto;

public class ADetailCommand implements ACommand{

	@Override
	public void execute(Model model) {
		
		
		String md_serial_number = (String) model.asMap().get("md_serial_number");
		
		System.out.println("md_serial_number : " + md_serial_number );
		
		
		ANDao adao = new ANDao();
		
		 //MdDto mdDto = adao.anDetail(member_id, member_addr, md_name, md_price,
		 //md_deposit, md_category, md_registration_date, md_hits, md_fav_count,
		 //md_detail_content, md_serial_number);
		 
		MdDto mdDto = adao.anDetail(md_serial_number);
		
		model.addAttribute("anDetail", mdDto);
	}

}
