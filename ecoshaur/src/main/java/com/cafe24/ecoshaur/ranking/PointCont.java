package com.cafe24.ecoshaur.ranking;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.utility.UploadSaveManager;
import net.utility.Utility;


@Controller
public class PointCont {
	
	@Autowired
	private PointDAO dao;
	
	public PointCont(){
		System.out.println("---MediaCont()객체 생성됨");
	}
	

	
	@RequestMapping(value="pointlist.do", method =  RequestMethod.GET)
	  public ModelAndView list() {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("point/pointList");
	      mav.addObject("root", Utility.getRoot());
	      mav.addObject("list", dao.list());
	      //부모글 번호
	      mav.addObject("mediagroupno", dto.getNo());

	      return mav;
	  }//list() end
	
	

	
} //class end
