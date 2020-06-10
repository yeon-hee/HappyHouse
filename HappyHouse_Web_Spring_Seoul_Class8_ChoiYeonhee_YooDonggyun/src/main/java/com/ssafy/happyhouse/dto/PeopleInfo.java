package com.ssafy.happyhouse.dto;

public class PeopleInfo {
   private String id;
   private String password;
   private String name;
   private String address;
   private String phoneNumber;

   
   public PeopleInfo() {}

   public PeopleInfo(String id, String password, String name, String address, String phoneNumber) {
      this.id = id;
      this.password = password;
      this.name = name;
      this.address = address;
      this.phoneNumber = phoneNumber;
   }

   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
   public String getPhoneNumber() {
      return phoneNumber;
   }
   public void setPhoneNumber(String phoneNumber) {
      this.phoneNumber = phoneNumber;
   }

   @Override
   public String toString() {
      return "PeopleInfo [id=" + id + ", password=" + password + ", name=" + name + ", address=" + address
            + ", phoneNumber=" + phoneNumber + "]";
   }

}