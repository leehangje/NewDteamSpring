package com.dteam.app.command;

import org.springframework.ui.Model;

import com.dteam.app.dao.ANDao;

public class AReviewInsertCommand implements ACommand {

	@Override
	public void execute(Model model) {
		String member_id = (String) model.asMap().get("member_id");
		String member_nickname = (String) model.asMap().get("member_nickname");
		String md_serial_number = (String) model.asMap().get("md_serial_number");
		String review_scope = (String) model.asMap().get("review_scope");
		String review_content = (String) model.asMap().get("review_content");
		
		ANDao adao = new ANDao();
		adao.anReviewInsert(member_id, member_nickname, md_serial_number, review_scope, review_content);
	}

}
