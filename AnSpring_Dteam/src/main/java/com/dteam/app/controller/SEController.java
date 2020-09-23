package com.dteam.app.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dteam.app.command.ACommand;
import com.dteam.app.command.AIdCheckCommand;
import com.dteam.app.command.AJoinCommand;
import com.dteam.app.command.ALoginCommand;
import com.dteam.app.command.ANickNameCheckCommand;
import com.dteam.app.command.AResetPwCommand;
import com.dteam.app.command.ASearchIdCommand;
import com.dteam.app.dao.SEDao;

@Controller
public class SEController {

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
	} //anLogin()

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
	} //anJoin()
	
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
	} //anNickNameCheck()
	
	// 핸드폰 번호로 아이디 찾기
	@RequestMapping(value = "/anSearchId", method = { RequestMethod.GET, RequestMethod.POST })
	public String anSearchId(HttpServletRequest request, Model model) {
		System.out.println("anSearchId()");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String member_tel = (String) request.getParameter("member_tel");

			System.out.println(member_tel);

			model.addAttribute("member_tel", member_tel);

			command = new ASearchIdCommand();
			command.execute(model);

			return "anSearchId";
		} // anSearchId()

		// 이메일 보내기
		@ResponseBody
		@RequestMapping(value = "/anSendEmail", produces = "text/html; charset=utf-8")
		public String anSendEmail(HttpServletRequest request, HttpSession session) {
			// 화면에서 입력한 회원정보를 DB에 저장한다.
			String member_id = (String) request.getParameter("member_id");
			String member_name = (String) request.getParameter("member_name");
			// String msg = "<script type='text/javascript'>";

			SEDao dao = new SEDao();
			dao.sendEmail(member_id, member_name, session);

			// msg += "location='" + request.getContextPath() + "'";
			// msg += "</script>";

			return "anSendEmail";
		} // anSendEmail()

		// 비밀번호 재설정 화면 호출
		@RequestMapping(value = "/anResetPwView", method = { RequestMethod.GET, RequestMethod.POST })
		public String anResetPwView(HttpServletRequest request, Model model) {
			System.out.println("anResetPwView()");

			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String member_id = (String) request.getParameter("member_id");

			System.out.println(member_id);

			model.addAttribute("anResetPwView", member_id);

			command = new AResetPwCommand();
			command.execute(model);

			return "anResetPwView";
		} // anResetPwView()

		// 비밀번호 재설정한 후 DB에 저장
		@ResponseBody
		@RequestMapping(value = "/anResetPw", produces = "text/html; charset=utf-8")
		public String anResetPw(HttpServletRequest request, String pw) {
			System.out.println("anResetPw()");
			String msg = "<script type='text/javascript'>";

			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String member_id = (String) request.getParameter("member_id");
			String member_pw = (String) request.getParameter("member_pw");

			System.out.println(member_id);
			System.out.println(member_pw);
			System.out.println(pw);

			SEDao dao = new SEDao();
			// int succ = adao.anResetPw(member_id, member_pw); //일치하는 아이디 반환
			int succ = dao.anResetPw(member_id, pw); // 일치하는 아이디 반환

			if (succ > 0) {
				msg += "alert('비밀번호가 재설정되었습니다.'); location=anResetPw";
			} else {
				msg += "alert('회원가입 실패'); history.go(-1)";
			}

			msg += "</script>";

			return msg;
		} // anResetPw()

}
