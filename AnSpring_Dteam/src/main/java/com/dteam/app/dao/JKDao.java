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

public class JKDao {

	DataSource dataSource;
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	
	public JKDao () {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/dteam");
		} catch (NamingException e) {
			e.getMessage();
		}
	}
	
	public int anUpdateMulti(String id, String dbImgPath) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			// 아이디는 수정할수 없음
			connection = dataSource.getConnection();
			String query = "update tblmember set MEMBER_PROFILE = '" + dbImgPath 
							+ "' where upper(member_id) LIKE upper('" + id + "')";
		
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("수정1성공");

			} else {
				System.out.println("수정1실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
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

		return state;

	}

	public int anSubUpdateMulti(String id, String name, String nickname, String tel, String addr) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			// 아이디는 수정할수 없음
			connection = dataSource.getConnection();
			String query = "update tblmember set MEMBER_NAME = '" + name + "', MEMBER_NICKNAME = '" 
					+ nickname + "', MEMBER_TEL = '" + tel + "', MEMBER_ADDR = '" + addr
					+ "' where upper(member_id) LIKE upper('" + id + "')";
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();

			if (state > 0) {
				System.out.println("수정2성공");

			} else {
				System.out.println("수정2실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
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

		return state;
	}

	
public int anProfileInsert(String id, String dbImgPath) {
		
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
				
		int state = -1;
		
		try {			
			// 
			connection = dataSource.getConnection();
			String query = "update tblmember set " + " MEMBER_PROFILE = '" + dbImgPath 
						+ "' where upper(member_id) LIKE upper('" + id + "')";
			System.out.println(id);
			prepareStatement = connection.prepareStatement(query);
			state = prepareStatement.executeUpdate();
			
			if (state > 0) {
				System.out.println(state + "삽입성공");				
			} else {
				System.out.println(state + "삽입실패");
			}

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
			} 

		}

		return state;

	}

public int anDeleteMulti(String id) {
	
	Connection connection = null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	
	int state = -1;

	try {
		connection = dataSource.getConnection();
		//String query = "delete from tblmerchandise where upper(member_id) LIKE upper('" + id + "')";
		String query = "delete from tblmember where upper(member_id) LIKE upper('" + id + "')";
		
		System.out.println(id);

		prepareStatement = connection.prepareStatement(query);
		state = prepareStatement.executeUpdate();

		if (state > 0) {
			System.out.println("삭제성공");				
		} else {
			System.out.println("삭제실패");
		}

	} catch (Exception e) {
		e.printStackTrace();
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
		}
	}

	return state;

}
}
