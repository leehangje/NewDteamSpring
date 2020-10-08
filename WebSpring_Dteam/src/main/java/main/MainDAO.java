package main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO implements MainService{
	@Autowired private SqlSession sql;

	@Override
	public List<MainVO> main_list() {
		return sql.selectList("main.mapper.list");
	}
	
	
	
}
