package com.dteam.app.controller;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import javax.servlet.http.HttpServletRequest;
import org.jcodec.api.FrameGrab;
import org.jcodec.api.JCodecException;
import org.jcodec.common.model.Picture;
import org.jcodec.scale.AWTUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.dteam.app.command.ACommand;
import com.dteam.app.command.ADetailCommand;
import com.dteam.app.command.AIdCheckCommand;
import com.dteam.app.command.AJoinCommand;
import com.dteam.app.command.ALoginCommand;
import com.dteam.app.command.AMdInsertCommand;
import com.dteam.app.command.AMainSelectCommand;
import com.dteam.app.command.ANickNameCheckCommand;

@Controller
public class AController {
	
	ACommand command;
	
	@RequestMapping(value="/anLogin", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anLogin(HttpServletRequest request, Model model){
		System.out.println("anLogin()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String member_id = (String) request.getParameter("member_id");
		String member_pw = (String) request.getParameter("member_pw");
		
		System.out.println(member_id);
		System.out.println(member_pw);
		
		model.addAttribute("member_id", member_id);
		model.addAttribute("member_pw", member_pw);
		
		command = new ALoginCommand();
		command.execute(model);
		
		return "anLogin";
	}

	@RequestMapping(value="/anJoin", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anJoin(HttpServletRequest request, Model model){
		System.out.println("anJoin()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String member_id = (String) request.getParameter("member_id");
		String member_pw = (String) request.getParameter("member_pw");
		String member_nickname = (String) request.getParameter("member_nickname");
		String member_tel = (String) request.getParameter("member_tel");
		String member_addr = (String) request.getParameter("member_addr");
		String member_latitude = (String) request.getParameter("member_latitude");
		String member_longitude = (String) request.getParameter("member_longitude");
		String member_name = (String) request.getParameter("member_name");
		
		System.out.println(member_id);
		System.out.println(member_pw);
		System.out.println(member_nickname);
		System.out.println(member_tel);
		System.out.println(member_addr);
		System.out.println(member_latitude);
		System.out.println(member_longitude);
		System.out.println(member_name);
		
		model.addAttribute("member_id", member_id);
		model.addAttribute("member_pw", member_pw);
		model.addAttribute("member_nickname", member_nickname);
		model.addAttribute("member_tel", member_tel);
		model.addAttribute("member_addr", member_addr);
		model.addAttribute("member_latitude", member_latitude);
		model.addAttribute("member_longitude", member_longitude);
		model.addAttribute("member_name", member_name);
		
		command = new AJoinCommand();
		command.execute(model);
		
		return "anJoin";
	}
	
	@RequestMapping(value="/anIdCheck", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anIdCheck(HttpServletRequest request, Model model) {
		System.out.println("anIdCheck()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String member_id = (String) request.getParameter("member_id");
		
		System.out.println(member_id);
		
		model.addAttribute("member_id", member_id);
		
		command = new AIdCheckCommand();
		command.execute(model);
		
		return "anIdCheck";
	} //anIdCheck()
	
	@RequestMapping(value="/anNickNameCheck", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anNickNameCheck(HttpServletRequest request, Model model) {
		System.out.println("anNickNameCheck()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String member_nickname = (String) request.getParameter("member_nickname");
		
		System.out.println(member_nickname);
		
		model.addAttribute("member_nickname", member_nickname);
		
		command = new ANickNameCheckCommand();
		command.execute(model);
		
		return "anNickNameCheck";
	} //anIdCheck()
	
	
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

	
	@RequestMapping(value="/anDetail", method = {RequestMethod.GET, RequestMethod.POST} )
	public String anDetail(HttpServletRequest request, Model model) {
		System.out.println("anDetail()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		
		String md_serial_number = (String)request.getParameter("md_serial_number");
		
		System.out.println(md_serial_number);
		
		model.addAttribute("md_serial_number", md_serial_number);
		
		command = new ADetailCommand();
		command.execute(model);
		
		return "anDetail";
	}
	
	@RequestMapping(value="/anInsert", method = {RequestMethod.GET, RequestMethod.POST}  )
	public String anInsert(HttpServletRequest request, Model model){
		System.out.println("anInsert()");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 		
		
		String md_name = (String) request.getParameter("md_name");
		String md_photo_url = (String) request.getParameter("md_photo_url");
		String md_title = (String) request.getParameter("md_title");
		String md_category = (String) request.getParameter("md_category");
		String md_price = (String) request.getParameter("md_price");
		String md_rental_term = (String) request.getParameter("md_rental_term");
		String md_deposit = (String) request.getParameter("md_deposit");
		String md_detail_content = (String) request.getParameter("md_detail_content");
		
		System.out.println(md_name);
		System.out.println(md_photo_url);
		System.out.println(md_title);
		System.out.println(md_category);
		System.out.println(md_price);
		System.out.println(md_rental_term);
		System.out.println(md_deposit);
		System.out.println(md_detail_content);
		
		model.addAttribute("md_name", md_name);
		model.addAttribute("md_photo_url", md_photo_url);
		model.addAttribute("md_title", md_title);
		model.addAttribute("md_category", md_category);
		model.addAttribute("md_price", md_price);
		model.addAttribute("md_rental_term", md_rental_term);
		model.addAttribute("md_deposit", md_deposit);
		model.addAttribute("md_detail_content", md_detail_content);
		
		MultipartRequest multi = (MultipartRequest)request;
		MultipartFile file = multi.getFile("image");
		
		if(file != null) {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			
			// 디렉토리 존재하지 않으면 생성
			makeDir(request);	
				
			if(file.getSize() > 0){			
				String realImgPath = request.getSession().getServletContext()
						.getRealPath("/resources/");
				
				System.out.println( fileName + " : " + realImgPath);
				System.out.println( "fileSize : " + file.getSize());					
												
			 	try {
			 		// 이미지파일 저장
					file.transferTo(new File(realImgPath, fileName));										
				} catch (Exception e) {
					e.printStackTrace();
				} 
									
			}else{
				// 이미지파일 실패시
				fileName = "FileFail.jpg";
				String realImgPath = request.getSession().getServletContext()
						.getRealPath("/resources/" + fileName);
				System.out.println(fileName + " : " + realImgPath);
						
			}			
			
		}
				
		command = new AMdInsertCommand();
		command.execute(model);
		
		return "anInsert";
	}

	private void makeDir(HttpServletRequest request) {
		File f = new File(request.getSession().getServletContext()
				.getRealPath("/resources"));
		if(!f.isDirectory()){
		f.mkdir();
		}	
		
	}
	

}
