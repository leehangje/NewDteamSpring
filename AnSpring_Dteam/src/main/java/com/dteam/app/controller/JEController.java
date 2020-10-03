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
import com.dteam.app.command.anFavUpdateCommand;
import com.dteam.app.command.anFavUpdateMinusCommand;

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
			
			System.out.println(md_serial_number);
			
			model.addAttribute("md_serial_number", md_serial_number);
			
			command = new ADetailPhotoSelectCommand();
			command.execute(model);
			
			return "anDetailPhoto";
		}//anDetailPhoto()
		
		
		//찜하기 버튼눌렀을 때 MD테이블의 md_fav_count가 1상승하게 하기
		@RequestMapping(value="/anFavUpdate", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anFavUpdate(HttpServletRequest request, Model model) {
			System.out.println("anFavUpdate()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 		
			
			String md_serial_number = (String)request.getParameter("md_serial_number");
			
			System.out.println("controll md_serial_number" + md_serial_number);
			
			model.addAttribute("md_serial_number", md_serial_number);
			
			command = new anFavUpdateCommand();
			command.execute(model);
			
			return "anFavUpdate";
		}//anFavUpdate()
		
		
		//찜하기 버튼 다시 눌렀을 때 MD테이블의 md_fav_count가 1내려감
		@RequestMapping(value="/anFavUpdateMinus", method = {RequestMethod.GET, RequestMethod.POST} )
		public String anFavUpdateMinus(HttpServletRequest request, Model model) {
			System.out.println("anFavUpdateMinus()");
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 		
			
			String md_serial_number = (String)request.getParameter("md_serial_number");
			
			System.out.println("controll md_serial_number" + md_serial_number);
			
			model.addAttribute("md_serial_number", md_serial_number);
			
			command = new anFavUpdateMinusCommand();
			command.execute(model);
			
			return "anFavUpdateMinus";
		}//anFavUpdateMinus()
		
		
	
	

}//class
