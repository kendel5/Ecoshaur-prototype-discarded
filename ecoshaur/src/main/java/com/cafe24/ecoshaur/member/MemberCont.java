package com.cafe24.ecoshaur.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.cafe24.ecoshaur.home.HomeDTO;
=======
import com.cafe24.ecoshaur.member.MemberDTO;
>>>>>>> 28a99bedb4d4e456758cbbd1b37a3ae81b4933df
import net.utility.Utility;

@Controller
public class MemberCont {
  @Autowired
  private MemberDAO dao;
  

  public MemberCont() {
<<<<<<< HEAD
    System.out.println("---HomeCont()객체 생성됨...");
=======
    System.out.println("---MemberCont()객체 생성됨...");
>>>>>>> 28a99bedb4d4e456758cbbd1b37a3ae81b4933df
  }
  
//상세보기
 @RequestMapping(value = "Member.do", method = RequestMethod.GET)
 public ModelAndView read() {
   ModelAndView mav = new ModelAndView();
<<<<<<< HEAD
   mav.setViewName("member/abc");   
   return mav;
 }// read() end
  
=======

   mav.setViewName("member/member");     
 return mav;
 }

>>>>>>> 28a99bedb4d4e456758cbbd1b37a3ae81b4933df
}
