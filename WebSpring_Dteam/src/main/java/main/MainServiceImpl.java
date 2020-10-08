
package main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{
	@Autowired private MainDAO dao;

	@Override
	public List<MainVO> main_list() {
		return dao.main_list();
	}
	
	
	
}
