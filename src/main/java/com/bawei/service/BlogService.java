package com.bawei.service;

import java.util.List;
import java.util.Map;

public interface BlogService {

	List<Map> getlist(String title);

	List<Map> getBlogType();

}
