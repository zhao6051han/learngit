package com.bawei.mapper;

import java.util.List;

import com.bawei.bean.Tree;
/**
 * 
 * @action Mapper接口
 * @author 倪寿森
 * @date 2017年6月30日
 */
public interface TreeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tree record);

    int insertSelective(Tree record);
    
    List<Tree> findAll();

    Tree selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tree record);

    int updateByPrimaryKey(Tree record);
}