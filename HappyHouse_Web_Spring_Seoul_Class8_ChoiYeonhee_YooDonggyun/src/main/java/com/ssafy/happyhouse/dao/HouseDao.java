package com.ssafy.happyhouse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HousePageBean;

@Mapper
@Repository
public interface HouseDao {

	public int getTotalCount();
	
	public List<HouseDeal> listHouse(int currentPage, int sizePerPage); // 페이징
	
	public List<HouseDeal> searchAll(HousePageBean  bean);
	
	public HouseDeal search(int no);
}
