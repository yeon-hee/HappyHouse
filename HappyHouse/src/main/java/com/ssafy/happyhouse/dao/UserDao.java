package com.ssafy.happyhouse.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.ssafy.happyhouse.dto.PeopleInfo;

@Mapper
@Repository
public interface UserDao {

   public String login(PeopleInfo pi) ;

   public void insert(PeopleInfo pi) ;
      
   public void delete(String id) ;
      
   public void update(PeopleInfo pi) ;

   public PeopleInfo getInfo(String id) ;
      
}