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
import com.dteam.app.command.ADetailPhotoSelectCommand;
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
			
			String member_addr = (String)request.getParameter("member_addr");
			System.out.println(member_addr);
			model.addAttribute("member_addr", member_addr);
			
			
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
	
		
		//상세페이지 상품사진 불러오기
		@RequestMapping(value="/anDetailPhoto", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anDetailPhoto(HttpServletRequest request, Model model) {
			System.out.println("anDetailPhoto()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 		
			
			String md_serial_number = (String)request.getParameter("md_serial_number");
			//String member_id = (String)request.getParameter("member_id");
			//String md_photo_url = (String)request.getParameter("md_photo_url");
			
			System.out.println(md_serial_number);
			//System.out.println(member_id);
			//System.out.println(md_photo_url);
			
			model.addAttribute("md_serial_number", md_serial_number);
			//model.addAttribute("member_id", member_id);
			//model.addAttribute("md_photo_url", md_photo_url);
			
			command = new ADetailPhotoSelectCommand();
			command.execute(model);
			
			return "anDetailPhoto";
		}
		
		
		
	
	

}//class
