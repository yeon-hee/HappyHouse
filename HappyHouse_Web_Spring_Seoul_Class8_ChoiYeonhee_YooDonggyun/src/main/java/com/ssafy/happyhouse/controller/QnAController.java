package com.ssafy.happyhouse.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.dto.QnA;
import com.ssafy.happyhouse.service.QnAService;

import io.swagger.annotations.ApiOperation;

//http://localhost:9999/happyhouse/swagger-ui.html
@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/api/qna")
public class QnAController {

	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private QnAService qnaService;

    @ApiOperation(value = "모든 질문게시판 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<QnA>> retrieveQnA() throws Exception {
		logger.debug("retrieveQnA - 호출");
		return new ResponseEntity<List<QnA>>(qnaService.retrieveQnA(), HttpStatus.OK);
	}
    
    @ApiOperation(value = "새로운 질문게시판 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
  	@PostMapping
  	public ResponseEntity<String> writeQnA(@RequestBody QnA qna, HttpSession session) {
  		logger.debug("writeQnA - 호출");
  		String userid = (String) session.getAttribute("userId");
  		System.out.println(userid+" 안녕 ");
  		qna.setQna_userid(userid);
  		if (qnaService.writeQnA(qna)) {
  			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
  		}
  		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
  	}

    @ApiOperation(value = "글번호에 해당하는 게시글의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
  	@PutMapping("{qna_no}")
  	public ResponseEntity<String> updateQnA(@RequestBody QnA qna) {
  		logger.debug("updateQnA - 호출");
  		logger.debug("" + qna);
  		
  		if (qnaService.updateQnA(qna)) {
  			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
  		}
  		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
  	}

    @ApiOperation(value = "글번호에 해당하는 게시글의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
  	@DeleteMapping("{qna_no}")
  	public ResponseEntity<String> deleteQnA(@PathVariable int qna_no) {
  		logger.debug("deleteQnA - 호출");
  		if (qnaService.deleteQnA(qna_no)) {
  			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
  		}
  		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
  	}
    
      @ApiOperation(value = "글번호에 해당하는 게시글의 정보를 반환한다.", response = QnA.class)    
      @GetMapping("{qna_no}")
    public ResponseEntity<QnA> detailQnA(@PathVariable int qna_no) {
    	logger.debug("detailQnA - 호출");
    	return new ResponseEntity<QnA>(qnaService.detailQnA(qna_no), HttpStatus.OK);
    }


}