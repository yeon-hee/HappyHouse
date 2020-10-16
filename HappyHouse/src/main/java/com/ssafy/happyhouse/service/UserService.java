package com.ssafy.happyhouse.service;

import com.ssafy.happyhouse.dto.PeopleInfo;

public interface UserService {

   public boolean login(PeopleInfo pi);

   public void insert(PeopleInfo pi);

   public void delete(String id);

   public void update(PeopleInfo pi);

   public PeopleInfo getInfo(String id);
}