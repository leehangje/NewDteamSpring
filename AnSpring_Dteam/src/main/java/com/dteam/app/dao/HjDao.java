package com.dteam.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.dteam.app.dto.MdDto;
import com.dteam.app.dto.MemberDto;
import com.dteam.app.dto.ReviewDto;

public class HjDao {

	DataSource dataSource;
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	
	public HjDao () {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/dteam");
		} catch (NamingException e) {
			e.getMessage();
		}
	}
	
	// 카테고리 별로 상품을 가져오는 메소드
	public ArrayList<MdDto> anMdpull(String category, String member_id) {
		String sql = "select Md_name, Md_category, member_id, md_serial_number, md_photo_url "
				   + "from tblmerchandise "
				   //+ "where md_category = ?";
				   + "where md_category = ? and member_id = ?";
		ArrayList<MdDto> list = new ArrayList<MdDto>();
		try {
			conn = dataSource.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, member_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				MdDto dto = new MdDto();
				dto.setMd_photo_url(rs.getString("md_photo_url"));
				dto.setMd_name(rs.getString("md_name"));
				dto.setMd_category(rs.getNString("md_category"));
				dto.setMember_id(rs.getString("member_id"));
				dto.setMd_serial_number(rs.getString("md_serial_number"));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	// 채팅리스트에 MemberDTO 가져오는 메소드
	public ArrayList<MemberDto> anChatpull(String member_id) {
		String sql = "select member_nickname, member_addr, member_profile "
				   + "from tblmember "
				   + "where member_id = ?";
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		try {
			conn = dataSource.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, member_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberDto dto = new MemberDto();
				dto.setMember_nickname(rs.getString("member_nickname"));
				dto.setMember_addr(rs.getString("member_addr"));
				dto.setMember_profile(rs.getString("member_profile"));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
 
	// 채팅리스트에 MemberDTO 가져오는 메소드
		public ArrayList<MdDto> anReadcnt(String member_id) {
			String sql = "update tblmerchandise set md_hits = md_hits + 1"
					   + "where member_id = ?";
			ArrayList<MdDto> list = new ArrayList<MdDto>();
			try {
				conn = dataSource.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, member_id);
				rs = ps.executeQuery();
				while (rs.next()) {
					MdDto dto = new MdDto();
					dto.setMd_hits(rs.getString("Md_hits"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		

		
		public ArrayList<ReviewDto> anReviewPull(String member_id) {
			String sql = "select * from tblreview where member_id = ? ";
					   
			ArrayList<ReviewDto> list = new ArrayList<ReviewDto>();
			try {
				conn = dataSource.getConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, member_id);
				rs = ps.executeQuery();
				while (rs.next()) {
					ReviewDto dto = new ReviewDto();
					dto.setMember_id(rs.getString("member_id"));
					dto.setReview_scope(rs.getString("review_scope"));
					dto.setReview_content(rs.getString("review_content"));
					dto.setMember_nickname(rs.getString("member_nickname"));
					dto.setMd_member_id(rs.getString("md_member_id"));
					dto.setMd_serial_number(rs.getString("md_serial_number"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
}
