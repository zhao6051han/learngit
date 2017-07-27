package com.bawei.mapper;

import java.util.List;

import com.bawei.bean.Empl;
/**
 * 
 * @action Mapper接口
 * @author 倪寿森
 * @date 2017年6月30日
 */
public interface EmplMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Empl record);

    int insertSelective(Empl record);
    
    List<Empl> check(String ename);
    
    List<Empl> findEmpl(Empl empl);

    Empl selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Empl record);

    int updateByPrimaryKey(Empl record);
}