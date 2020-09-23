package com.dteam.app.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.HtmlEmail;

import com.dteam.app.dto.MdDto;
import com.dteam.app.dto.MemberDto;

public class ANDao {

	DataSource dataSource;

	public ANDao() {
		try {
			Context context = new InitialContext();
			/* dataSource = (DataSource) context.lookup("java:/comp/env/team01"); */
			dataSource = (DataSource) context.lookup("java:/comp/env/dteam");
			/* dataSource = (DataSource) context.lookup("java:/comp/env/CSS"); */
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

	public MdDto anDetail(String md_serial_number_in) {

		MdDto mdDto = null;
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * from tblmerchandise where md_serial_number ='" + md_serial_number_in + "'";
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

				mdDto = new MdDto(md_name, md_category, md_price, md_rental_term, md_deposit, md_detail_content,
						md_photo_url, member_id, md_fav_count, md_registration_date, md_serial_number, md_rent_status,
						md_hits);
			}
			System.out.println("md_serial_number : " + mdDto.getMd_serial_number());

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
		return mdDto;
	}

	public int anInsert(String md_name, String md_photo_url, String md_title, String md_category, int md_price,
			String md_rental_term, int md_deposit, String md_detail_content) {

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;

		int state = -1;

		try {
			connection = dataSource.getConnection(); // md_title, 빠짐 DTO에 컬럼 빠짐
			String sql = "insert into tblmerchandise(md_name, md_photo_url,  md_category, md_price, md_rental_term, "
<<<<<<< HEAD
					+ "md_deposit, md_detail_content, member_id, md_serial_number) " //md_title + "', '"
					+ "values('" + md_name + "', '" + md_photo_url + "', '"   
								+ md_category + "', '" + md_price + "', '" + md_rental_term
								+ "', '" + md_deposit +"', '" + md_detail_content + "','" + member_id + "', seq_md_serial.nextval)";
			
=======
					+ "md_deposit, md_detail_content) " // md_title + "', '"
					+ "values('" + md_name + "', '" + md_photo_url + "', '" + md_category + "', '" + md_price + "', '"
					+ md_rental_term + "', '" + md_deposit + "', '" + md_detail_content + "' )";

>>>>>>> 1e65e2c1b4870405cb4f60f52b982ec3dad2cfd3
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

				mdDtos.add(new MdDto(md_name, md_category, md_price, md_rental_term, md_deposit, md_detail_content,
						md_photo_url, member_id, md_fav_count, md_registration_date, md_serial_number, md_rent_status,
						md_hits));

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
			msg.append("<a href='192.178.0.178:8080/app/anResetPwView?member_id=" + member_id + "'>비밀번호 재설정 하기</a>");
			// 안드로이드에서는 localhost로 접근이 x, 서버를 돌리고 있는 ip주소를 입력해야 접근이 가능함
			
			msg.append("</body>");	
			msg.append("</html>");
			mail.setHtmlMsg(msg.toString());
			/*
			EmailAttachment file = new EmailAttachment();
			file.setPath(session.getServletContext().getRealPath("resources") + "/images/hanul.logo.png");
			mail.attach(file);
			*/
			mail.send();
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	} //sendEmail()
	
	//비밀번호 재설정
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
	} //anResetPw()
	

	/*
	 * public ArrayList<ANDto> anSelectMulti() {
	 * 
	 * ArrayList<ANDto> adtos = new ArrayList<ANDto>(); Connection connection =
	 * null; PreparedStatement prepareStatement = null; ResultSet resultSet = null;
	 * 
	 * try { connection = dataSource.getConnection(); String query =
	 * "select id, name, hire_date, image_path " + " from android" +
	 * " order by id desc"; prepareStatement = connection.prepareStatement(query);
	 * resultSet = prepareStatement.executeQuery();
	 * 
	 * while (resultSet.next()) { int id = resultSet.getInt("id"); String name =
	 * resultSet.getString("name"); Date date = resultSet.getDate("hire_date");
	 * String imagePath = resultSet.getString("image_path");
	 * 
	 * ANDto adto = new ANDto(id, name, date, imagePath); adtos.add(adto); }
	 * 
	 * System.out.println("adtos크기" + adtos.size());
	 * 
	 * } catch (Exception e) {
	 * 
	 * System.out.println(e.getMessage()); } finally { try {
	 * 
	 * if (resultSet != null) { resultSet.close(); } if (prepareStatement != null) {
	 * prepareStatement.close(); } if (connection != null) { connection.close(); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally {
	 * 
	 * } }
	 * 
	 * return adtos;
	 * 
	 * }
	 */

	/*
	 * public int anInsertMulti(int id, String name, String date, String dbImgPath)
	 * {
	 * 
	 * Connection connection = null; PreparedStatement prepareStatement = null;
	 * ResultSet resultSet = null;
	 * 
	 * int state = -1;
	 * 
	 * try { // connection = dataSource.getConnection(); String query =
	 * "insert into android(id, name, hire_date, image_path) " + "values(" + id +
	 * ",'" + name + "'," + "to_date('" + date + "','rr/mm/dd') , '" + dbImgPath +
	 * "' )";
	 * 
	 * prepareStatement = connection.prepareStatement(query); state =
	 * prepareStatement.executeUpdate();
	 * 
	 * if (state > 0) { System.out.println(state + "삽입성공"); } else {
	 * System.out.println(state + "삽입실패"); }
	 * 
	 * } catch (Exception e) { System.out.println(e.getMessage()); } finally { try {
	 * if (resultSet != null) { resultSet.close(); } if (prepareStatement != null) {
	 * prepareStatement.close(); } if (connection != null) { connection.close(); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * }
	 * 
	 * return state;
	 * 
	 * }
	 */
	/*
	 * public int anUpdateMulti(int id, String name, String date, String dbImgPath)
	 * {
	 * 
	 * Connection connection = null; PreparedStatement prepareStatement = null;
	 * ResultSet resultSet = null;
	 * 
	 * int state = -1;
	 * 
	 * try { // 아이디는 수정할수 없음 connection = dataSource.getConnection(); String query =
	 * "update android set " + " name = '" + name + "' " + ", hire_date = '" + date
	 * + "' " + ", image_path = '" + dbImgPath + "' " + " where id = " + id ;
	 * 
	 * prepareStatement = connection.prepareStatement(query); state =
	 * prepareStatement.executeUpdate();
	 * 
	 * if (state > 0) { System.out.println("수정1성공");
	 * 
	 * } else { System.out.println("수정1실패"); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try { if (resultSet
	 * != null) { resultSet.close(); } if (prepareStatement != null) {
	 * prepareStatement.close(); } if (connection != null) { connection.close(); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally {
	 * 
	 * } }
	 * 
	 * return state;
	 * 
	 * }
	 */
	/*
	 * public int anUpdateMultiNo(int id, String name, String date) {
	 * 
	 * Connection connection = null; PreparedStatement prepareStatement = null;
	 * ResultSet resultSet = null;
	 * 
	 * int state = -1;
	 * 
	 * try { // 아이디는 수정할수 없음 connection = dataSource.getConnection(); String query =
	 * "update android set " + " name = '" + name + "' " + ", hire_date = '" + date
	 * + "' " + " where id = " + id ;
	 * 
	 * prepareStatement = connection.prepareStatement(query); state =
	 * prepareStatement.executeUpdate();
	 * 
	 * if (state > 0) { System.out.println("수정2성공");
	 * 
	 * } else { System.out.println("수정2실패"); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try { if (resultSet
	 * != null) { resultSet.close(); } if (prepareStatement != null) {
	 * prepareStatement.close(); } if (connection != null) { connection.close(); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally {
	 * 
	 * } }
	 * 
	 * return state; }
	 */
	/*
	 * public int anDeleteMulti(int id) {
	 * 
	 * Connection connection = null; PreparedStatement prepareStatement = null;
	 * ResultSet resultSet = null;
	 * 
	 * int state = -1;
	 * 
	 * try { connection = dataSource.getConnection(); String query =
	 * "delete from android where id=" + id;
	 * 
	 * System.out.println(id);
	 * 
	 * prepareStatement = connection.prepareStatement(query); state =
	 * prepareStatement.executeUpdate();
	 * 
	 * if (state > 0) { System.out.println("삭제성공"); } else {
	 * System.out.println("삭제실패"); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { try { if (resultSet
	 * != null) { resultSet.close(); } if (prepareStatement != null) {
	 * prepareStatement.close(); } if (connection != null) { connection.close(); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } }
	 * 
	 * return state;
	 * 
	 * }
	 */

}