package com.ssafy.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.HouseInfoDao;
import com.ssafy.happyhouse.dto.HouseInfo;

@Service
public class HouseInfoServiceImpl implements HouseInfoService {
	private HouseInfoDao houseInfoDao;

	@Autowired
	public void setHouseInfoDao(HouseInfoDao houseInfoDao) {
		this.houseInfoDao = houseInfoDao;
	}

	@Override
	public List<HouseInfo> searchAllHouseInfo(){
		return houseInfoDao.searchAllHouseInfo();
	}
}