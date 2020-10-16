package com.ssafy.happyhouse.dao;

import java.util.List;
import com.ssafy.happyhouse.dto.QnA;

public interface QnADAO {

	List<QnA> selectQnA(); // QnA 전체 조회 - 목록
	int insertQnA(QnA qna); // 게시글 등록
	int updateQnA(QnA qna); // 게시글 수정
	int deleteQnA(int qna_no); // 게시글 삭제 
	QnA selectQnAByNo(int qna_no); // 게시글 상세검색
}
