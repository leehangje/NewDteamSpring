package com.dteam.app.dto;

public class ReviewDto {
	String member_id;
	String member_nickname;
	String md_serial_number;
	String review_scope;
	String review_content;
	
	public ReviewDto(String member_id, String member_nickname, String md_serial_number, String review_scope,
			String review_content) {
		super();
		this.member_id = member_id;
		this.member_nickname = member_nickname;
		this.md_serial_number = md_serial_number;
		this.review_scope = review_scope;
		this.review_content = review_content;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public String getMd_serial_number() {
		return md_serial_number;
	}

	public void setMd_serial_number(String md_serial_number) {
		this.md_serial_number = md_serial_number;
	}

	public String getReview_scope() {
		return review_scope;
	}

	public void setReview_scope(String review_scope) {
		this.review_scope = review_scope;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	
	
	
	
}
