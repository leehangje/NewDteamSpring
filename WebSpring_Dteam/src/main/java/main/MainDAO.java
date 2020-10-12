package main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO implements MainService{
	@Autowired private SqlSession sql;

	@Override
	public MainPage main_list(MainPage page) {
		page.setTotalList( 
				(Integer)sql.selectOne("main.mapper.total", page) );
		page.setList( sql.selectList("main.mapper.list", page) );
		return page;
	}

	@Override
	public MainVO main_detail(String md_serial_number) {
		return sql.selectOne("main.mapper.detail", md_serial_number);
	}
	
	
	
}
