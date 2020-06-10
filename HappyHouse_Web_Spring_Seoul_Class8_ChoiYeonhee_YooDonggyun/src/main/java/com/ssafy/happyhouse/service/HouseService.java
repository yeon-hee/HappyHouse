package com.ssafy.happyhouse.service;

import java.util.List;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HousePageBean;

public interface HouseService {
	
	public List<HouseDeal> searchAll(HousePageBean  bean);
	
	public List<HouseDeal> listHouse(int pg, int sizePerPage);
	
	//public PageNavigation makePageNavigation(int pg, int sizePerPage);
	
	public HouseDeal search(int no);
}
