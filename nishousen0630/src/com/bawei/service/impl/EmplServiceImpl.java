package com.bawei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bawei.bean.Empl;
import com.bawei.mapper.EmplMapper;
import com.bawei.service.EmplService;
/**
 * 
 * @action 接口实现类
 * @author 倪寿森
 * @date 2017年6月30日
 */
public class EmplServiceImpl implements EmplService{
	@Autowired
	private EmplMapper emplMapper;

	@Override
	public List<Empl> check(String ename) {
		return emplMapper.check(ename);
	}

	@Override
	public int insert(Empl record) {
		return emplMapper.insert(record);
	}

	@Override
	public List<Empl> findEmpl(Empl empl) {
		return emplMapper.findEmpl(empl);
	}

}
