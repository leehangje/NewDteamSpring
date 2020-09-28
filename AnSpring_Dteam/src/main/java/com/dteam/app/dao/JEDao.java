package com.dteam.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.dteam.app.dto.MdDto;
import com.dteam.app.dto.MemberDto;

public class JEDao {

	DataSource dataSource;
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	

	public JEDao() {
		try {
			Context context = new InitialContext();
			/* dataSource = (DataSource) context.lookup("java:/comp/env/team01"); */
			dataSource = (DataSource) context.lookup("java:/comp/env/dteam");
			/* dataSource = (DataSource) context.lookup("java:/comp/env/CSS"); */
		} catch (NamingException e) {
			e.getMessage();
		}

	}	
	
	
	//상세페이지에 회원정보 가져오기
	public MemberDto anDetail(String member_idin) {

		MemberDto adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * from tblmember where member_id = '" + member_idin + "' ";
			prepareStatement = connection.prepareStatement(sql);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				String member_id = resultSet.getString("member_id");
			    String member_pw = resultSet.getString("member_pw");
			    String member_nickname = resultSet.getString("member_nickname");
			    String member_tel = resultSet.getString("member_tel");
			    String member_addr = resultSet.getString("member_addr");
			    String member_latitude = resultSet.getString("member_latitude");
			    String member_longitude = resultSet.getString("member_longitude");
			    String member_grade = resultSet.getString("member_grade");
			    String member_name = resultSet.getString("member_name");
			    String member_profile = resultSet.getString("member_profile");
				/*
				 * String member_logintype = resultSet.getString("member_logintype"); String
				 * member_token = resultSet.getString("member_token");
				 */				

			    adto = new MemberDto(member_id, member_pw, member_nickname, member_tel, member_addr, member_latitude,
						member_longitude, member_grade, member_name, member_profile);
			
			}
			System.out.println("member_id : " + adto.getMember_id());

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (prepareStatement != null) {
					prepareStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {

			}
		}
		return adto;
	}
	
	
	// 전체 상품정보 가져오기
		public ArrayList<MdDto> anMainSelect() {

			ArrayList<MdDto> mdDtos = new ArrayList<MdDto>();
			Connection connection = null;
			PreparedStatement prepareStatement = null;
			ResultSet resultSet = null;

			try {
				connection = dataSource.getConnection();
				String sql = "select * from tblmerchandise";
				prepareStatement = connection.prepareStatement(sql);
				resultSet = prepareStatement.executeQuery();

				while (resultSet.next()) {
					String md_name = resultSet.getString("md_name");
					String md_category = resultSet.getString("md_category");
					String md_price = resultSet.getString("md_price");
					String md_rental_term = resultSet.getString("md_rental_term");
					String md_deposit = resultSet.getString("md_deposit");
					String md_detail_content = resultSet.getString("md_detail_content");
					String md_photo_url = resultSet.getString("md_photo_url");
					String member_id = resultSet.getString("member_id");
					String md_fav_count = resultSet.getString("md_fav_count");
					String md_registration_date = resultSet.getString("md_registration_date");
					String md_serial_number = resultSet.getString("md_serial_number");
					String md_rent_status = resultSet.getString("md_rent_status");
					String md_hits = resultSet.getString("md_hits");

					 
					mdDtos.add(new MdDto(md_name, md_category, md_price, md_rental_term,
							md_deposit, md_detail_content, md_photo_url, member_id,  md_fav_count, 
							md_registration_date, md_serial_number, md_rent_status, md_hits));
					 
				}
				System.out.println("mdDtos size : " + mdDtos.size());

			} catch (Exception e) {
				System.out.println(e.getMessage());
			} finally {
				try {
					if (resultSet != null) {
						resultSet.close();
					}
					if (prepareStatement != null) {
						prepareStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {

				}
			}
			return mdDtos;
		}// anMainSelect()

		// 전체 회원정보 가져오기
		public ArrayList<MemberDto> anMember() {

			ArrayList<MemberDto> memberDtos = new ArrayList<MemberDto>();
			Connection connection = null;
			PreparedStatement prepareStatement = null;
			ResultSet resultSet = null;

			try {
				connection = dataSource.getConnection();
				String sql = "select * " + " from tblmember ";
				prepareStatement = connection.prepareStatement(sql);
				resultSet = prepareStatement.executeQuery();

				while (resultSet.next()) {
					String member_id = resultSet.getString("member_id");
					String member_pw = resultSet.getString("member_pw");
					String member_nickname = resultSet.getString("member_nickname");
					String member_tel = resultSet.getString("member_tel");
					String member_addr = resultSet.getString("member_addr");
					String member_latitude = resultSet.getString("member_latitude");
					String member_longitude = resultSet.getString("member_longitude");
					String member_grade = String.valueOf(resultSet.getInt("member_grade"));
					String member_name = resultSet.getString("member_name");
				}
				System.out.println("memberDtos size : " + memberDtos.size());
			} catch (Exception e) {
				System.out.println(e.getMessage());
			} finally {
				try {
					if (resultSet != null) {
						resultSet.close();
					}
					if (prepareStatement != null) {
						prepareStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {

				}
			}
			return memberDtos;
		}// anMember()

		
		//상세페이지에서 해당회원의 다른상품 보기
		public ArrayList<MdDto> anDarunSelect(String member_id_in) {
			
			ArrayList<MdDto> mdDtos = new ArrayList<MdDto>();
			Connection connection = null;
			PreparedStatement prepareStatement = null;
			ResultSet resultSet = null;

			try {
				connection = dataSource.getConnection();
				String sql = "select * from tblmerchandise where member_id = '" + member_id_in + "' ";
				prepareStatement = connection.prepareStatement(sql);
				resultSet = prepareStatement.executeQuery();

				while (resultSet.next()) {
					String md_name = resultSet.getString("md_name");
					String md_category = resultSet.getString("md_category");
					String md_price = resultSet.getString("md_price");
					String md_rental_term = resultSet.getString("md_rental_term");
					String md_deposit = resultSet.getString("md_deposit");
					String md_detail_content = resultSet.getString("md_detail_content");
					String md_photo_url = resultSet.getString("md_photo_url");
					String member_id = resultSet.getString("member_id");
					String md_fav_count = resultSet.getString("md_fav_count");
					String md_registration_date = resultSet.getString("md_registration_date");
					String md_serial_number = resultSet.getString("md_serial_number");
					String md_rent_status = resultSet.getString("md_rent_status");
					String md_hits = resultSet.getString("md_hits");

					 
					mdDtos.add(new MdDto(md_name, md_category, md_price, md_rental_term,
							md_deposit, md_detail_content, md_photo_url, member_id,  md_fav_count, 
							md_registration_date, md_serial_number, md_rent_status, md_hits));
					 
				}
				System.out.println("mdDtos size : " + mdDtos.size());

			} catch (Exception e) {
				System.out.println(e.getMessage());
			} finally {
				try {
					if (resultSet != null) {
						resultSet.close();
					}
					if (prepareStatement != null) {
						prepareStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {

				}
			}
			return mdDtos;
		}
	
	
}
