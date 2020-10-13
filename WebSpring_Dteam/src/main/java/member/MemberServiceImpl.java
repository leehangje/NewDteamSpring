
package member;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO dao;

	@Override
	public boolean member_insert(MemberVO vo) {
		return dao.member_insert(vo);
	}

	@Override
	public MemberVO member_login(HashMap<String, String> map) {
		
		return dao.member_login(map);
	}

	@Override
	public void  member_update(MemberVO vo) {
		 dao.member_update(vo);
	}

	@Override
	public boolean member_delete(String userid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean member_id_check(String userid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO social_login(String member_id) {
		
		return dao.social_login(member_id);
	}

	@Override
	public boolean naver_insert(MemberVO vo) {
		return dao.naver_insert(vo);
	}

	@Override
	public int update_token(MemberVO vo) {
		return dao.update_token(vo);
	}

	@Override
	public boolean kakao_insert(MemberVO vo) {
		return dao.kakao_insert(vo);
	}

	@Override
	public MemberVO member_detail(String member_id) {
		
		return dao.member_detail(member_id);
	}
}
