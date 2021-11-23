package com.homet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.homet.model.Freeboard;
import com.homet.model.PageDto;
import com.homet.service.FreeBoardService;

@Controller
//@RequestMapping("/board")
public class FreeboardController {
	 
	private final FreeBoardService service;
	
	public FreeboardController(FreeBoardService service) {
		this.service = service;
	}
	
	@RequestMapping(value="/list")    
	public String pageList(@RequestParam Map<String, Object> param,Model model) {
		
		int currentPage;//현재 페이지
		List<Freeboard> list;
		int totalCount; int pageSize=10;
		String page=(String) param.get("page");
		if(page==null || page.trim().length()==0) currentPage = 1;
		else currentPage = Integer.parseInt(page);
		
		PageDto pageDto;
		
		String findText = (String) param.get("findText");
		String field=(String) param.get("field");
		
		totalCount=service.searchCount(param);  
		pageDto=new PageDto(currentPage, pageSize, totalCount, field, findText);
		list=service.searchList(pageDto); 
		Map<String,Object> map = new HashMap<String,Object>();    
		map.put("page", pageDto);		
		map.put("list",list);	
		model.addAllAttributes(map);	
	
		return "board/list";
	
	}
	
	//글 쓰기
	@RequestMapping(value="/write")  
	    public String write(int page, Model model) {
			model.addAttribute("page", page);
	        return "board/write";
	    }
	
	//글 저장
	@RequestMapping(value = "/save")
		public String save(@ModelAttribute Freeboard freeboard) {
			service.insert(freeboard);
			return "redirect:list";
		}
	
	//글 상세보기
	@RequestMapping("/detail")     
		public String detail(int fidx, int page, Model model) {
			model.addAttribute("detail", service.getBoardOne(fidx));
			model.addAttribute("page",page);
		return "board/detail";
		}
	
	//글 수정
	@RequestMapping("/update")
		public String update(int fidx, int page, Model model) {
			model.addAttribute("detail", service.getBoardOne(fidx));
			model.addAttribute("fidx", fidx);
			model.addAttribute("page", page);
		return "board/update";
	}
	
	//수정 후 저장
	@RequestMapping(value = "/updatesave", method = RequestMethod.POST)
	public String updatesave(@ModelAttribute Freeboard freeboard, int fidx, int page, Model model ) {
		service.update(freeboard);
		
		model.addAttribute("fidx", fidx);
		model.addAttribute("page", page);
		
		String url = "redirect:detail?&fidx="+fidx+"&page="+page;      //fidx가 넘어가지 않아서 작성했습니다. 
		return url;
		/* return "redirect:detail"; */
	}
	
	//글 삭제
	@RequestMapping("/boarddelete")
	public String boarddelete(int fidx, int page, Model model) {
		service.delete(fidx);
		
		model.addAttribute("page", page);
		return "redirect:list";
	}
	
	
	
}
