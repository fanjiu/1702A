package com.bawei.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bawei.service.BlogService;
import com.bawei.utils.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class BlogController {
	@Resource
	private BlogService service;
	
	@RequestMapping("list")
	public String getlist(@RequestParam(defaultValue="")String title,@RequestParam(defaultValue="1")Integer page,Model model){
		int pageSize=2;
		PageHelper.startPage(page, pageSize);
		List<Map> list=service.getlist(title);
		PageInfo<Map> info = new PageInfo<>(list);
		String pageInfo = PageUtil.page(page, info.getPages(), "/list?title="+title, pageSize);
		 model.addAttribute("list", list);
		 model.addAttribute("pageInfo", pageInfo);
		return "list";
	}
	
	@RequestMapping("toAdd")
	public String toAdd(){
		return "add";
	}
	@RequestMapping("getBlogType")
	@ResponseBody
	public List<Map> getBlogType(){
		List<Map> list=service.getBlogType();
		return list;
	}
}
