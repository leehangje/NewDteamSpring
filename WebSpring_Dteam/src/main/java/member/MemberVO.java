package member;

public class MemberVO {
	//MEMBER_ID	VARCHAR2(30 BYTE)	No
	//MEMBER_PW	VARCHAR2(30 BYTE)	Yes
	//MEMBER_NICKNAME	VARCHAR2(30 BYTE)	Yes
	//MEMBER_TEL	VARCHAR2(30 BYTE)	Yes
	//MEMBER_ADDR	VARCHAR2(100 BYTE)	Yes
	//MEMBER_LATITUDE	VARCHAR2(15 BYTE)	Yes
	//MEMBER_LONGITUDE	VARCHAR2(15 BYTE)	Yes
	//MEMBER_GRADE	NUMBER	Yes
	//MEMBER_NAME	VARCHAR2(10 BYTE)	Yes
	
	private String member_id, member_pw, member_nickname, member_tel, member_addr,
	member_latitude, member_longitude, member_name;
	private int member_grade;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_latitude() {
		return member_latitude;
	}
	public void setMember_latitude(String member_latitude) {
		this.member_latitude = member_latitude;
	}
	public String getMember_longitude() {
		return member_longitude;
	}
	public void setMember_longitude(String member_longitude) {
		this.member_longitude = member_longitude;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(int member_grade) {
		this.member_grade = member_grade;
	}
	
	
}
