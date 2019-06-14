package com.bawei.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bawei.mapper.BlogMapper;
import com.bawei.mapper.BlogTypeMapper;

@Service
public class BlogServiceimp implements BlogService{
	@Resource
	private BlogMapper blogMapper;
	@Resource
	private BlogTypeMapper blogtypeMapper;

	@Override
	public List<Map> getlist(String title) {
		// TODO Auto-generated method stub
		return blogMapper.getlist(title);
	}

	@Override
	public List<Map> getBlogType() {
		// TODO Auto-generated method stub
		return blogtypeMapper.getBlogType();
	}
}
