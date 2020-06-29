package com.cafe24.ecoshaur.category;

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
public class RentalCont {
  @Autowired
  private RentalDAO dao;
  

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
  mav.addObject("category", category);
  mav.addObject("list", dao.listDT(category));
  return mav;
}// CategoryList() end
 




 /* 파일업로드
 @RequestMapping(value = "createForm.do", method = RequestMethod.GET)
 public ModelAndView createForm() {
   ModelAndView mav = new ModelAndView();
   mav.setViewName("category/createForm");
 
   return mav;
 }// createForm() end
 
 @RequestMapping(value = "createForm.do", method = RequestMethod.POST)
 public ModelAndView createProc(RentalDTO dto, HttpServletRequest req,
                                              HttpSession session,
                                              HttpServletResponse resp) {
   ModelAndView mav = new ModelAndView();
   mav.setViewName("category/Category");
   mav.addObject("root", Utility.getRoot());
//---------------------------------------------------------------------------
   String basePath = req.getRealPath("/category/storage");
   
   MultipartFile PosterMF = dto.getPosterMF();
   String poster = UploadSaveManager.saveFileSpring30(PosterMF, basePath);
   dto.setThmb_name(poster);
   
  
   return mav;
 }// createProc() end
 */
}
