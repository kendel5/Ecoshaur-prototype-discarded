package com.cafe24.ecoshaur.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.utility.Utility;

@Controller
public class BoardCont {

  @Autowired
  BoardDAO dao;

  @RequestMapping("community/Board.do")
  public ModelAndView Notice() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("community/Board");
    mav.addObject("root", Utility.getRoot());
    mav.addObject("list", dao.list());
    return mav;
  }

  @RequestMapping("community/BRead.do")
  public ModelAndView read(int postno) {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("community/BRead");
    mav.addObject("root", Utility.getRoot());
    mav.addObject("dto", dao.read(postno));
    return mav;
  }
}
