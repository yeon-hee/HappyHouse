package com.ssafy.happyhouse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.UserDao;
import com.ssafy.happyhouse.dto.PeopleInfo;

@Service
public class UserServiceImpl implements UserService {

   private UserDao userDao;

   @Autowired
   public void setUserDao(UserDao userDao) {
      this.userDao = userDao;
   }

   @Override
   public boolean login(PeopleInfo pi) {
      return userDao.login(pi) != null;
   }

   @Override
   public void insert(PeopleInfo pi) {
      userDao.insert(pi);
   }

   @Override
   public void delete(String id) {
      userDao.delete(id);
   }

   @Override
   public void update(PeopleInfo pi) {
      userDao.update(pi);
   }

   @Override
   public PeopleInfo getInfo(String id) {
      return userDao.getInfo(id);
   }

}