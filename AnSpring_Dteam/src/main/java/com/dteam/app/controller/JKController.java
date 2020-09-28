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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.dteam.app.command.ACommand;
import com.dteam.app.command.ADeleteMultiCommand;
import com.dteam.app.command.AProfileInsertCommand;
import com.dteam.app.command.ASubUpdateMultiCommand;
import com.dteam.app.command.AUpdateMultiCommand;

@Controller
public class JKController {
		
		ACommand command;
		
		@RequestMapping(value="/anProfileInsertMulti", method = {RequestMethod.GET, RequestMethod.POST}  )
		public void anInsertMulti(HttpServletRequest req, Model model){
			System.out.println("anProfileInsertMulti()");	
			
			try {
				req.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 		
			String id = (String) req.getParameter("id");
			String dbImgPath = (String) req.getParameter("dbImgPath");
			
			System.out.println(id);
			System.out.println(dbImgPath);
			
			model.addAttribute("id", id);
			model.addAttribute("dbImgPath", dbImgPath);	
			
			MultipartRequest multi = (MultipartRequest)req;
			MultipartFile file = multi.getFile("image");
			
				
			if(file != null) {
				String fileName = file.getOriginalFilename();
				System.out.println(fileName);
				
				// 占쎈탵占쎌젂占쎈꽅�뵳占� 鈺곕똻�삺占쎈릭筌욑옙 占쎈륫占쎌몵筌롳옙 占쎄문占쎄쉐
				makeDir(req);	
					
				if(file.getSize() > 0){			
					String realImgPath = req.getSession().getServletContext()
							.getRealPath("/resources/");
					
					System.out.println( fileName + " : " + realImgPath);
					System.out.println( "fileSize : " + file.getSize());					
													
				 	try {
				 		// 占쎌뵠沃섎챷占쏙옙�솁占쎌뵬 占쏙옙占쎌삢
						file.transferTo(new File(realImgPath, fileName));										
					} catch (Exception e) {
						e.printStackTrace();
					} 
										
				}else{
					// 占쎌뵠沃섎챷占쏙옙�솁占쎌뵬 占쎈뼄占쎈솭占쎈뻻
					fileName = "FileFail.jpg";
					String realImgPath = req.getSession().getServletContext()
							.getRealPath("/resources/" + fileName);
					System.out.println(fileName + " : " + realImgPath);
							
				}			
				
			}
			System.out.println(id);
			command = new AProfileInsertCommand();
			command.execute(model);
			
			/* return "anProfileInsert"; */
		}
		

		public void makeDir(HttpServletRequest req){
			File f = new File(req.getSession().getServletContext()
					.getRealPath("/resources"));
			if(!f.isDirectory()){
			f.mkdir();
			}	
		}
		
		@RequestMapping(value="/anUpdateMulti", method = {RequestMethod.GET, RequestMethod.POST})
		public void anUpdateMulti(HttpServletRequest req, Model model){
			System.out.println("anUpdateMulti()");	
			
			try {
				req.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			String id = (String) req.getParameter("id");
			String dbImgPath = (String) req.getParameter("dbImgPath");
			String pDbImgPath = (String) req.getParameter("pDbImgPath");
			
			System.out.println("Sub1Update:id " + id);
			System.out.println("Sub1Update:dbImgPath " + dbImgPath);
			System.out.println("Sub1Update:pDbImgPath " + pDbImgPath);
			
			model.addAttribute("id", id);
			model.addAttribute("dbImgPath", dbImgPath);

			// �뜝�떛諭꾩삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떗怨ㅼ삕 �뜝�뙐紐뚯삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떛諭꾩삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
			if(dbImgPath.equals(pDbImgPath)){			
				
				String pFileName = req.getParameter("pDbImgPath").split("/")[req.getParameter("pDbImgPath").split("/").length -1];
				String delDbImgPath = req.getSession().getServletContext().getRealPath("/resources/" + pFileName);
				
				File delfile = new File(delDbImgPath);
				System.out.println(delfile.getAbsolutePath());
				
		        if(delfile.exists()) {
		        	boolean deleteFile = false;
		            while(deleteFile != true){
		            	deleteFile = delfile.delete();
		            }	            
		            
		        }//if(delfile.exists())
			
			}//if(!dbImgPath.equals(pDbImgPath))  
			
			MultipartRequest multi = (MultipartRequest)req;
			MultipartFile file = null;
			
			file = multi.getFile("image");
				
			if(file != null) {
				String fileName = file.getOriginalFilename();
				System.out.println(fileName);
				
				// �뜝�룞�삕�뜝�뜲由� �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
				makeDir(req);	
					
				if(file.getSize() > 0){			
					String realImgPath = req.getSession().getServletContext()
							.getRealPath("/resources/");
					
					System.out.println( fileName + " : " + realImgPath);
					System.out.println( "fileSize : " + file.getSize());					
													
				 	try {
				 		// �뜝�떛諭꾩삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
						file.transferTo(new File(realImgPath, fileName));						
					} catch (Exception e) {
						e.printStackTrace();
					} 
										
				}else{
					fileName = "FileFail.jpg";
					String realImgPath = req.getSession().getServletContext()
							.getRealPath("/resources/" + fileName);
					System.out.println(fileName + " : " + realImgPath);
							
				}			
				
			}
			
			command = new AUpdateMultiCommand();
			command.execute(model);		
			
		}
		
		@RequestMapping(value="/anSubUpdateMulti", method = {RequestMethod.GET, RequestMethod.POST})
		public void anSubUpdateMulti(HttpServletRequest req, Model model){
			System.out.println("anSubUpdateMulti()");	
			
			try {
				req.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			String id = (String) req.getParameter("id");
			String name = (String) req.getParameter("name");
			String nickname = (String) req.getParameter("nickname");
			String tel = (String) req.getParameter("tel");
			String addr = (String) req.getParameter("addr");
			
			System.out.println("Sub1Update:id " + id);
			System.out.println("Sub1Update:name " + name);
			System.out.println("Sub1Update:nickname " + nickname);
			System.out.println("Sub1Update:tel " + tel);
			System.out.println("Sub1Update:addr " + addr);
			
			model.addAttribute("id", id);
			model.addAttribute("name", name);
			model.addAttribute("nickname", nickname);
			model.addAttribute("tel", tel);
			model.addAttribute("addr", addr);
			
			command = new ASubUpdateMultiCommand();
			command.execute(model);		
			
		}
		
		@RequestMapping(value="/anDeleteMulti", method = {RequestMethod.GET, RequestMethod.POST})
		public void anDeleteMulti(HttpServletRequest req, Model model){
			System.out.println("anDeleteMulti()");		
			
			model.addAttribute("id", req.getParameter("id"));		
					
			System.out.println((String)req.getParameter("id"));
			System.out.println((String)req.getParameter("delDbImgPath"));
			
			String pFileName = req.getParameter("delDbImgPath").split("/")[req.getParameter("delDbImgPath").split("/").length -1];
			String delDbImgPath = req.getSession().getServletContext().getRealPath("/resources/" + pFileName);		
			
			// 占쎌뵠沃섎챷占� 占쎈솁占쎌뵬筌욑옙占쎌뒭疫뀐옙
			File delfile = new File(delDbImgPath);
			System.out.println(delfile.getAbsolutePath());
			
	        if(delfile.exists()) {
	            System.out.println("Sub1Del:pDelImagePath " + delfile.exists());
	            boolean deleteFile = false;
	            while(deleteFile != true){
	            	deleteFile = delfile.delete();
	            }     
	        }	
			
			command = new ADeleteMultiCommand();
			command.execute(model);	
			
		}

	}