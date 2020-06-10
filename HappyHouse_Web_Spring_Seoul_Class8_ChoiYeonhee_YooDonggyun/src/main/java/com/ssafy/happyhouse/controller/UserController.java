package com.ssafy.happyhouse.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.happyhouse.dto.PeopleInfo;
import com.ssafy.happyhouse.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {

   private UserService userService;

   @Autowired
   public void setUserService(UserService userService) {
      this.userService = userService;
   }

   // 로그인
   @PostMapping("/login.do")
   public String login(Model model, PeopleInfo user, HttpSession session) {
      System.out.println(user);
      boolean result = userService.login(user);
      System.out.println(result);
      if (result) {
         PeopleInfo pi = userService.getInfo(user.getId());
         session.setAttribute("userId", pi.getId());
         session.setAttribute("name", pi.getName());
         return "redirect:/index.jsp";
      } else {
         model.addAttribute("errorMessage", "아이디 또는 비밀번호가 잘못되었습니다.");
         return "/user/login";
      }
   }

   // 로그아웃
   @GetMapping("/logout.do")
   public String logout(HttpSession session) {
      session.invalidate();
      return "redirect:/index.jsp";
   }

   // 회원가입
   @PostMapping("/sign.do")
   public String sign(PeopleInfo pi, Model model) {
      System.out.println(pi);
      userService.insert(pi);
      model.addAttribute("userId", pi.getId());
      return "/user/sign";
   }

   // 회원정보조회
   @GetMapping("/look.do")
   public String look1(Model model, String userId) {
      PeopleInfo userInfo = userService.getInfo(userId);
      model.addAttribute("people", userInfo);
      model.addAttribute("userId", userId);
      return "/user/look";
   }
   @PostMapping("/look.do")
   public String look2(Model model, String userId) {
      PeopleInfo userInfo = userService.getInfo(userId);
      model.addAttribute("people", userInfo);
      model.addAttribute("userId", userId);
      return "/user/look";
   }

   // 회원수정
   @PostMapping("/modify.do")
   public String update(PeopleInfo userInfo, Model model) {
      userService.update(userInfo);
      System.out.println(userInfo);
      model.addAttribute("id", userInfo.getId());
      return "/user/modify";
   }

   // 회원정보삭제
   @PostMapping("/delete.do")
   public String delete(HttpSession session, Model model) {
      String userId = (String) session.getAttribute("userId");
      if (userId != null) {
         userService.delete(userId);
         session.invalidate();
      } else {
         model.addAttribute("errorMessage", "회원 탈퇴에 실패하였습니다.");
      }
      return "/user/delete";
   }

   @PostMapping("/password.do")
   public String password(String userId,Model model) {
      PeopleInfo pi = userService.getInfo(userId);
      if(pi!=null) {
         String pw = pi.getPassword();
         model.addAttribute("password", pw);
      }else {
         model.addAttribute("errorMessage", "비밀번호 찾기에 실패하였습니다.");
      }
      return "/user/password";
   }
   
   @GetMapping("/signcon.do")
   public String signcon() {
      return "/user/sign";
   }
   
   @GetMapping("/logincon.do")
   public String logincon() {
      return "/user/login";
   }
   
   @GetMapping("/infocon.do")
   public String infocon() {
      return "/user/info";
   }
   
   @PostMapping("/passwordcon.do")
   public String passwordcon1() {
      return "/user/password";
   }
   @GetMapping("/passwordcon.do")
   public String passwordcon2() {
      return "/user/password";
   }
   
   @PostMapping("/lookcon.do")
   public String lookcon() {
      return "/user/look";
   }
   @PostMapping("/modifycon.do")
   public String modifycon() {
      return "/user/modify";
   }
   @PostMapping("/deletecon.do")
   public String deletecon() {
      return "/user/delete";
   }
   
}