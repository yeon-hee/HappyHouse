package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.HouseDao;
import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HousePageBean;

@Service
public class HouseServiceImpl implements HouseService{
	
	private HouseDao dao;
	
	@Autowired
	public void setHouseDao(HouseDao dao) {
		this.dao = dao;
	}
	
	@Override
	public List<HouseDeal> searchAll(HousePageBean  bean){
		return dao.searchAll(bean);
	}
	
	@Override
	public HouseDeal search(int no){
		return dao.search(no);
	}

//	public PageNavigation makePageNavigation(int currentPage, int sizePerPage){
//		
//		PageNavigation pageNavigation = new PageNavigation();
//		int naviSize = 10; // 페이지 갯수 1~10
//		pageNavigation.setCurrentPage(currentPage);
//		pageNavigation.setNaviSize(naviSize);
//		int totalCount = dao.getTotalCount(); // 총 게시글 수
//		pageNavigation.setTotalCount(totalCount);
//		int totalPageCount = (totalCount-1)/sizePerPage; // 전체 페이지 수 
//		pageNavigation.setTotalPageCount(totalPageCount);
//		boolean startRange = currentPage <= naviSize; // startRange가 true면 이전 못누르게 한다, false:이전 누를 수 있음  
//		pageNavigation.setStartRange(startRange);
//		boolean endRange = (totalPageCount-1)/naviSize * naviSize < currentPage;// endRange가 true면 다음버튼 누를 수 없고, false면 다음 버튼 누를 수 있음 
//		pageNavigation.setEndRange(endRange);
//		pageNavigation.makeNavigator();
//		return pageNavigation;
//		
//	}

	@Override
	public List<HouseDeal> listHouse(int currentPage, int sizePerPage){
		return dao.listHouse(currentPage, sizePerPage);
	}
}




