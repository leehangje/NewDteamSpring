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
	public ArrayList<MdDto> anMdpull(String category) {
		String sql = "select Md_name, Md_category, member_id, md_serial_number "
				   + "from tblmerchandise "
				   + "where md_category = ?";
					//+ "where md_category = ? and member_id = ?";
		ArrayList<MdDto> list = new ArrayList<MdDto>();
		try {
			conn = dataSource.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, category);
			rs = ps.executeQuery();
			while (rs.next()) {
				MdDto dto = new MdDto();
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

}
