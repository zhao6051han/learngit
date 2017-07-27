package com.bawei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bawei.bean.Tree;
import com.bawei.service.TreeService;
/**
 * 
 * @action treeController 类 
 * @author 倪寿森
 * @date 2017年6月30日
 */
@Controller
public class TreeController {
	//service层接口实现类
	@Autowired
	private TreeService treeService;
	//查询全部数据
	@ResponseBody
	@RequestMapping("findAll")
	public List<Tree> findAll(){
		return treeService.findAll();
	}

}
