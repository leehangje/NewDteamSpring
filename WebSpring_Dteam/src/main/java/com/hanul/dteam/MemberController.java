package com.hanul.dteam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/mypage")
	public String mypage() {
	 return "member/mypage";	
	}
	
}
