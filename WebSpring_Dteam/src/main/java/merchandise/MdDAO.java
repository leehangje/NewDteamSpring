package merchandise;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MdDAO implements MdService{

	@Autowired private SqlSession sql;
	
	

	@Override
	public List<MdVO> md_list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MdVO md_detail(String md_serial_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void md_update(MdVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void md_delete(String md_serial_number) {
		// TODO Auto-generated method stub
		
	}

}
