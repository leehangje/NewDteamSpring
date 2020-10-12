package main;

import java.util.List;


public interface MainService {
	
	MainPage main_list(MainPage page); //상품목록조회
	MainVO main_detail(String md_serial_number); //상품상세 조회
}
