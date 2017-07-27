package com.bawei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bawei.bean.Tree;
import com.bawei.mapper.TreeMapper;
import com.bawei.service.TreeService;
/**
 * 
 * @action 接口实现类
 * @author 倪寿森
 * @date 2017年6月30日
 */
public class TreeServiceImpl implements TreeService{
	@Autowired
	private TreeMapper treeMapper;

	@Override
	public List<Tree> findAll() {
		return treeMapper.findAll();
	}

}
