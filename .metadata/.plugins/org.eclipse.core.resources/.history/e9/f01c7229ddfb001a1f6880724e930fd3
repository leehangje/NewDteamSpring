package com.dteam.app.command;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;

public class AMdInsertCommand implements ACommand {
	@Override
	public void execute(Model model) {
		String md_name = (String) model.asMap().get("md_name");
		String md_photo_url = (String) model.asMap().get("md_photo_url");
		String md_title = (String) model.asMap().get("md_title");
		String md_category = (String) model.asMap().get("md_category");
		int md_price = Integer.parseInt((String) model.asMap().get("md_price"));
		String md_rental_term = (String) model.asMap().get("md_rental_term");
		int md_deposit = Integer.parseInt((String) model.asMap().get("md_deposit"));
		String md_detail_content = (String) model.asMap().get("md_detail_content");
		
		ANDao adao = new ANDao();
		adao.anInsert(md_name, md_photo_url, md_title, md_category, md_price, md_rental_term, md_deposit, md_detail_content);

		
	}
	
}
