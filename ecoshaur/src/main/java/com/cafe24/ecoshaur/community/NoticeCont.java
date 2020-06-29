package com.cafe24.ecoshaur.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.utility.Utility;

@Controller
public class NoticeCont {

  @Autowired
  NoticeDAO dao;

  @RequestMapping("community/Notice.do")
  public ModelAndView Notice() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("community/Notice");
    mav.addObject("root", Utility.getRoot());
    mav.addObject("list", dao.list());
    return mav;
  }

  @RequestMapping("community/NRead.do")
  public ModelAndView read(int postno) {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("community/NRead");
    mav.addObject("root", Utility.getRoot());
    mav.addObject("dto", dao.read(postno));
    return mav;
  }
}
