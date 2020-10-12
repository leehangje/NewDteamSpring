package qna;

import java.util.List;

public interface QnaService {
	
	//CRUD
		void qna_insert(QnaVO vo);					//공지글 저장
		void qna_reply_insert(QnaVO vo);		//공지글 답글 저장
		List<QnaVO> qna_list();						//공지글 목록
		QnaPage qna_list(QnaPage page);				//공지글 목록-페이지처리
		QnaVO qna_detail(int id);					//공지글 상세
		void qna_update(QnaVO vo); 				//공지글 수정
		//void notice_read(int id); 				//공지글 조회수증가
		void qna_delete(int id);				//공지글 삭제
		
		//List<QnaVO> qna_list(QnaPage page);
	
	
}
