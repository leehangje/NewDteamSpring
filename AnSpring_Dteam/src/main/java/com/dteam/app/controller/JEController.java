package com.dteam.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dteam.app.command.ACommand;
import com.dteam.app.command.ADarunSelectCommand;
import com.dteam.app.command.ADetailCommand;
import com.dteam.app.command.AMainSelectCommand;

@Controller
public class JEController {
	ACommand command;
	
	//메인페이지 상품리스트 
		@RequestMapping(value="/anMainSelect", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anMainSelect(HttpServletRequest request, Model model) {
			System.out.println("anMainSelect()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 	
			
			command = new AMainSelectCommand();
			
			command.execute(model);
			
			return "anMainSelect";
		}
	
	
		//상세페이지에서 해당회원의 다른상품보기
		@RequestMapping(value="/anDarunSelect", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anDarunSelect(HttpServletRequest request, Model model) {
			System.out.println("anDarunSelect()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 	
			
			String member_id = (String)request.getParameter("member_id");
			
			System.out.println(member_id);
			
			model.addAttribute("member_id", member_id);
			
			command = new ADarunSelectCommand();
			command.execute(model);
			
			return "anDarunSelect";
		}
		
		
		//상세페이지에서 회원정보보기
		@RequestMapping(value="/anDetail", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anDetail(HttpServletRequest request, Model model) {
			System.out.println("anDetail()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 		
			
			String member_id = (String)request.getParameter("member_id");
			
			System.out.println(member_id);
			
			model.addAttribute("member_id", member_id);
			
			command = new ADetailCommand();
			command.execute(model);
			
			return "anDetail";
		}
	
	
	
	

}
