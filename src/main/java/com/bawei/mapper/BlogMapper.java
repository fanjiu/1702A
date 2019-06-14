package com.bawei.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bawei.entity.Blog;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
    /**
     * 
     * @Title: getlist 
     * @Description: 列表
     * @return
     * @return: List<Map>
     */
	List<Map> getlist(@Param("title")String title);
}