package com.webjjang.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webjjang.board.service.BoardService;
import com.webjjang.board.vo.BoardVO;





@Controller
@RequestMapping("/board")
public class BoardController {

	 private final String MODULE = "board";
	 
	 @Autowired
	 @Qualifier("boardServiceImpl")
	 private BoardService service;
	 
	 @GetMapping("/list.do")
	 public String list(Model model) {
		 
		
		 model.addAttribute("list", service.list());
		 
		// model.addAttribute("pageObject", pageObject);

		 
		 return MODULE + "/list";
	 }

	 
	 
	 @GetMapping("/write.do")
	 public String writeForm() {
		 return MODULE + "/write";
	 }
	 
	 @PostMapping("/write.do")
	 public String write(BoardVO vo) {
		 service.write(vo);
		 return"redirect:list.do";
	 }
	 
	 @GetMapping("/view.do")
	 public String view(Model model,int no,int inc) {
		 model.addAttribute("vo", service.view(no, inc));
	     return MODULE + "/view";
	 }
	 
	 
	 
	 /*
	 @GetMapping("/update.do")
	 public String updateForm(Model model, int no) {
		 model.addAttribute("vo", service.view2(no, 0));
		 return MODULE + "/update";
	 }
	 
	 
     @PostMapping("/update.do")
     public String update(BoardVO vo) {
    	 service.update(vo);
    	 
    	 return "redirect:view.do?no=" + vo.getNo() + "&inc=0";
     }
     */
	 
	 @GetMapping("/modify.do")
	 public String updateForm(Model model, int no) {
		 model.addAttribute("vo", service.view2(no, 0));
		 return MODULE + "/modify";
	 }
	 
	    @PostMapping("/modify.do")
	     public String update(BoardVO vo) {
	    	 service.update(vo);
	    	 
	    	 return "redirect:view.do?no=" + vo.getNo() + "&inc=0";
	     }
	 
	 
	 
	 
	 
	
     @PostMapping("/delete.do")
     public String delete(BoardVO vo) {
    	 service.delete(vo);
    	 return "redirect:list.do";
     }
	
	
	 
	 
	
	
}
