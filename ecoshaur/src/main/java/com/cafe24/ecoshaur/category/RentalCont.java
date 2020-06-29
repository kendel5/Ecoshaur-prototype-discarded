package com.cafe24.ecoshaur.category;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.utility.UploadSaveManager;
import net.utility.Utility;

@Controller
public class RentalCont {
  @Autowired
  private RentalDAO dao;
  //
  //jjj

  public RentalCont() {}
  
//전체보기 
 @RequestMapping(value = "Category.do", method = RequestMethod.GET)
 public ModelAndView CategoryList() {
   ModelAndView mav = new ModelAndView();
   mav.setViewName("category/Category");   
   mav.addObject("root", Utility.getRoot());// 
   mav.addObject("list", dao.list());
   return mav;
 }// CategoryList() end
 
 
//소그룹
@RequestMapping(value = "CategoryDT.do", method = RequestMethod.GET)
public ModelAndView CategoryDTList(String category) {
  ModelAndView mav = new ModelAndView();
  mav.setViewName("category/CategoryDT");   
  mav.addObject("root", Utility.getRoot());// 
  mav.addObject("cg", category);
  mav.addObject("list", dao.listDT(category));
  mav.addObject("category", dao.category(category));
  return mav;
}// CategoryList() end


@RequestMapping(value = "CategoryDT.do", method = RequestMethod.POST)
public ModelAndView testCheck(HttpServletRequest req, String cg) {
  String[] valueArr = req.getParameterValues("test_check");
  ModelAndView mav = new ModelAndView();
  mav.setViewName("category/CategoryDT");
  int size = valueArr.length;
  mav.addObject("root", Utility.getRoot());// 
  mav.addObject("cg", cg);
  mav.addObject("list", dao.select_listDT(valueArr ,size));
  mav.addObject("category", dao.category(cg));
  return mav;
}
 
// 상품등록
@RequestMapping(value = "Rental_resister.do", method = RequestMethod.GET)
public ModelAndView Rental_resister() {
  ModelAndView mav = new ModelAndView();
  mav.setViewName("category/Rental_resister");   
  mav.addObject("minor", dao.MNcategory());
  return mav;
}// CategoryList() end

 @RequestMapping(value = "Rental_resister.do", method = RequestMethod.POST)
 public ModelAndView createProc(RentalDTO dto, HttpServletRequest req,
                                              HttpSession session,
                                              HttpServletResponse resp) {
   ModelAndView mav = new ModelAndView();
   mav.setViewName("category/Rental_resister");
   mav.addObject("root", Utility.getRoot());
//---------------------------------------------------------------------------
   String basePath = req.getRealPath("/category/storage");
   
   MultipartFile PosterMF = dto.getPosterMF();
   String poster = UploadSaveManager.saveFileSpring30(PosterMF, basePath);
   dto.setThmb_name(poster);
   MultipartFile filenameMF = dto.getFilenameMF();
   String image = UploadSaveManager.saveFileSpring30(filenameMF, basePath);
   dto.setImage_name(image);
//---------------------------------------------------------------------------
   
  
   return mav;
 }// createProc() end

}
