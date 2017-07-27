package com.bawei.service;

import java.util.List;

import com.bawei.bean.Empl;
/**
 * 
 * @action EmplService接口
 * @author 倪寿森
 * @date 2017年6月30日
 */
public interface EmplService {
	
	List<Empl> check(String ename);
	
	List<Empl> findEmpl(Empl empl);
	
	int insert(Empl record);

}
