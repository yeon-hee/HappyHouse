package com.ssafy.happyhouse.service;

import java.util.List;

import com.ssafy.happyhouse.dto.HouseInfo;

public interface HouseInfoService {
    /**HouseInfo DB에 위도 경도 입력하기 위해서  등록된 모든 집의 동과 지번을 추출한다.  */
    public List<HouseInfo> searchAllHouseInfo();
    
}