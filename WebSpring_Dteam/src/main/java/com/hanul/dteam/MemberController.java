package com.hanul.dteam;

import java.io.IOException;
import java.util.HashMap;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;

import member.KakaoLoginAPI;
import member.MemberServiceImpl;
import member.MemberVO;
import member.NaverLoginBO;

@Controller
public class MemberController {
	@Autowired private MemberServiceImpl service;
	@Autowired private KakaoLoginAPI kakao;
	
    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }
	
	@RequestMapping("/mypage")
	public String mypage() {
	 return "member/mypage";	
	}
	
	/****************************************
	 ** 로그인 ********************************/
	
	// 로그인 화면 요청
	@RequestMapping("/login_view")
	public String login() {

		return "member/login";
	}
	
	// 로그인 처리
	@ResponseBody @RequestMapping("/login")
	public Boolean login(String userId, String userPw, HttpSession session, Model model) {
		// 화면에서 입력한 아이디, 비번이 일치하는 회원정보를 가져옴
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", userId);
		map.put("pw", userPw);
		MemberVO vo = service.member_login(map);

		// DB에서 조회해와 세션에 담는다.
		session.setAttribute("login_info", vo);

		return vo==null ? false: true;
		// 화면을 넘기는 것이 아니라 ajax로 통신한 쪽(header.jsp)으로 데이터를 가지고 오기만 하면 된다.
		// return "true"으로 작성할 경우 true.jsp라는 화면으로 넘기게 된다.
	} // login()
	
	@RequestMapping(value="/naver_login", method = { RequestMethod.GET, RequestMethod.POST })
	public String naver_login(Model model, HttpSession session) {
		
		//네이버 아이디로 인증 URL을 생성하기 위하여 naverLoginBO 클래스의 getAuthorizationUrl 메소드 호출 
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("naverAuthUrl", naverAuthUrl);
 
        return "redirect:" + naverAuthUrl;
	} // login()
	
	 //네이버 로그인 성공시 callback호출 메소드
	@ResponseBody 
	@RequestMapping(value = "/naver_callback", method = { RequestMethod.GET, RequestMethod.POST }
					, produces = "text/html; charset=utf-8")
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
            throws IOException {
		String msg = "<script type='text/javascript'>";
    	String member_id, member_nickname, member_name, member_loginType = "N", member_token;
    	MemberVO naverVO = null;
    	Boolean result = false;
    	
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);
        
        model.addAttribute("result", apiResult);
        
        //System.out.println(apiResult);
        
        try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(apiResult);
			JSONObject responseInfo = (JSONObject) jsonObject.get("response");
			
			member_id = member_loginType + (String)responseInfo.get("email");
			System.out.println("네이버 회원 프로필의 아이디 : " + member_id);
			
			member_nickname = (String)responseInfo.get("nickname");
			member_name = (String)responseInfo.get("name");
			member_token = oauthToken.getAccessToken();
			//System.out.println("access 토큰 = " + oauthToken.getAccessToken());
			//System.out.println("기한 = " + oauthToken.getExpiresIn());
			//System.out.println("refresh 토큰 = " + oauthToken.getRefreshToken());
			
			// 네이버(소셜 로그인) 계정이 DB에 저장되어 있는 지 확인
			naverVO = service.naver_login(member_id);
			
			if(naverVO == null) {	//네이버 계정이 DB에 저장 x 
				naverVO = new MemberVO(member_id, member_nickname, member_name, member_loginType, member_token);
				result = service.naver_insert(naverVO);	//DB에 저장 시킴
			} else {
				// 마지막 토큰 : AAAAOs44pMDCKPkYZtEyQ3eMdG-6QWMpNcCtE4_wvZ9dwUp1GuNmEPBRNU6un6AS1a5_9tFqtIonX6IgR3TBEJFJD3k
				if(!member_token.equals(naverVO.getMember_token())) {	//토큰 재발급되었을 때
					System.out.println("access 토큰 = " + member_token);
					System.out.println("db 토큰 = " + naverVO.getMember_token());
					if(service.update_token(naverVO) > 0) {
						System.out.println("토큰 DB 업데이트 o");
					} else {
						System.out.println("토큰 DB 업데이트 x");
					}
				} else {
					System.out.println("토큰 값 그대로");
				}
				result = true;
				System.out.println("vo의 아이디 : " + naverVO.getMember_id());
			}
			String member_id_c = member_id.substring(member_id.indexOf(member_loginType) + 1, member_id.length());
			System.out.println(member_id_c);
			naverVO.setMember_id(member_id_c);
			session.setAttribute("login_info", naverVO);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        if(result) {
        	msg += "alert('네이버 소셜 로그인 성공'); location.href = '/dteam'";
        } else {
        	msg += "alert('네이버 소셜 로그인에 실패하셨습니다.\n 관리자에게 문의하세요'); history.go(-1)";
        }
        
        msg += "</script>";
       
        return msg;
    }
	
	@RequestMapping(value = "/kakao_login")
	public String kakao_login(@RequestParam("code") String code) {
		System.out.println(code);
		String access_token = kakao.getAccessToken(code);
		System.out.println(access_token);
		
		return "redirect:/";
	}
	
	
	//로그아웃 처리
	@ResponseBody @RequestMapping("/logout")
	public void logout(HttpSession session) {
		//세션의 로그인정보를 삭제한다.
		session.removeAttribute("login_info");

		
		//로그아웃 한 후 가지고갈 데이터가 없기 때문에 반환할 값이 없다.
	} //logout()
	
	/****************************************
	 ** 회원가입 ******************************/
	
	//회원가입화면 요청
	@RequestMapping("/member")
	public String member(HttpSession session) {
		session.removeAttribute("category");
		// → 회원가입 화면으로 이동할때는 카테고리에 속하지 않으므로 카테고리 정보 삭제
		
		return "member/join";
	} //member()
	
}
