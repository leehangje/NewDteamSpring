package com.dteam.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.mail.HtmlEmail;

import com.dteam.app.dto.MemberDto;

public class SEDao {
	DataSource dataSource;

	public SEDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/dteam");
		} catch (NamingException e) {
			e.getMessage();
		}
	}

	public MemberDto anLogin(String id, String pw) {

		MemberDto adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * " + " from tblmember" + " where member_id = '" + id + "' and member_pw = '" + pw
					+ "' ";
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
				// int member_grade = Integer.parseInt(resultSet.getString("member_grade"));
				String member_name = resultSet.getString("member_name");
				String member_profile = resultSet.getString("member_profile");

				adto = new MemberDto(member_id, member_pw, member_nickname, member_tel, member_addr, member_latitude,
						member_longitude, member_grade, member_name, member_profile);
			}

			System.out.println("MemberDTO id : " + adto.getMember_id());

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

	public int anJoin(String member_id, String member_pw, String member_nickname, String member_tel, String member_addr,
			String member_latitude, String member_longitude, String member_name) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		int state = -100;

		try {
			connection = dataSource.getConnection();
			String sql = "insert into tblmember(member_id, member_pw, member_nickname, member_tel, "
					+ "member_addr, member_latitude, member_longitude, member_name) " + "values('" + member_id + "', '"
					+ member_pw + "', '" + member_nickname + "', '" + member_tel + "', '" + member_addr + "', '"
					+ member_latitude + "', '" + member_longitude + "', '" + member_name + "' )";
			prepareStatement = connection.prepareStatement(sql);
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

	public MemberDto anIdCheck(String member_id) {
		MemberDto adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * " + " from tblmember" + " where member_id = '" + member_id + "' ";
			prepareStatement = connection.prepareStatement(sql);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				member_id = resultSet.getString("member_id");
				String member_nickname = resultSet.getString("member_nickname");
				String member_tel = resultSet.getString("member_tel");
				String member_addr = resultSet.getString("member_addr");
				String member_latitude = resultSet.getString("member_latitude");
				String member_longitude = resultSet.getString("member_longitude");
				String member_grade = resultSet.getString("member_grade");
				String member_name = resultSet.getString("member_name");

				adto = new MemberDto(member_id, member_nickname, member_tel, member_addr, member_latitude,
						member_longitude, member_grade, member_name);
			}

			System.out.println("MemberDTO id : " + adto.getMember_id());

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
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
	} // anIdCheck()

	public MemberDto anNickNameCheck(String member_nickname) {
		MemberDto adto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * " + " from tblmember" + " where member_nickname = '" + member_nickname + "' ";
			prepareStatement = connection.prepareStatement(sql);
			resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				member_nickname = resultSet.getString("member_nickname");

				adto = new MemberDto(member_nickname);
			}

			System.out.println("MemberDTO nickname : " + adto.getMember_nickname());

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
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
	} // anNickNameCheck()

	// 핸드폰 번호로 아이디 찾기
	public String anSearchId(String member_tel) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		String id = "";

		try {
			connection = dataSource.getConnection(); // md_title, 빠짐 DTO에 컬럼 빠짐
			String sql = "select member_id " + " from tblmember" + " where member_tel = '" + member_tel + "' ";

			prepareStatement = connection.prepareStatement(sql);
			resultSet = prepareStatement.executeQuery();

			if (resultSet.next()) {
				System.out.println("아이디 있음");
				id = resultSet.getString("member_id");
			} else {
				System.out.println("아이디 없음");
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
			} finally {

			}
		}
		return id;
	} // anSearchId()

	public void sendEmail(String member_id, String member_name, HttpSession session) {
		HtmlEmail mail = new HtmlEmail();
		mail.setHostName("smtp.naver.com");
		mail.setCharset("utf-8");
		mail.setDebug(true);

		mail.setAuthentication("tjdms5322", "rla2684!");
		mail.setSSLOnConnect(true);

		try {
			mail.setFrom("tjdms5322@naver.com", "한울관리자");
			mail.addTo(member_id, member_name);

			mail.setSubject("[대여 안대여] 비밀번호 재설정 안내 메일");
			StringBuffer msg = new StringBuffer();
			msg.append("<html>");
			msg.append("<body>");
			msg.append("<hr>");
			msg.append("<h1>비밀번호 재설정 안내</h1>");
			msg.append("<p>아래 링크를 누르시고 새로운 비밀번호를 입력하시면 비밀번호가 변경됩니다.</p>");
			msg.append("<a href='localhost:8080/app/anResetPwView?member_id=" + member_id + "'>비밀번호 재설정 하기</a>");
			// 안드로이드에서는 localhost로 접근이 x, 서버를 돌리고 있는 ip주소를 입력해야 접근이 가능함

			msg.append("</body>");
			msg.append("</html>");
			mail.setHtmlMsg(msg.toString());
			/*
			 * EmailAttachment file = new EmailAttachment();
			 * file.setPath(session.getServletContext().getRealPath("resources") +
			 * "/images/hanul.logo.png"); mail.attach(file);
			 */
			mail.send();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	} // sendEmail()

	// 비밀번호 재설정
	public int anResetPw(String id, String pw) {
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		int succ = 0;

		try {
			connection = dataSource.getConnection();
			String sql = "update tblmember set member_pw = '" + pw + "' where member_id = '" + id + "'";
			prepareStatement = connection.prepareStatement(sql);
			succ = prepareStatement.executeUpdate();

			if (succ > 0) {
				System.out.println("비밀번호 재설정 완료!");
			} else {
				System.out.println("비밀번호 재설정 실패!");
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
			} finally {

			}
		}

		return succ;
	} // anResetPw()

}
