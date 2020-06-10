package com.ssafy.happyhouse.service;

import java.util.List;
import com.ssafy.happyhouse.dto.QnA;

public interface QnAService {
	List<QnA> retrieveQnA();
	boolean writeQnA(QnA board);
	boolean updateQnA(QnA board);
	boolean deleteQnA(int qna_no);
	QnA detailQnA(int qna_no);
}
