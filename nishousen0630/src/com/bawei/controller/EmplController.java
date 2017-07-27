package com.bawei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bawei.bean.Empl;
import com.bawei.service.EmplService;
/**
 * 
 * @action controller类 
 * @author 倪寿森
 * @date 2017年6月30日
 */
@Controller
public class EmplController {
	//emplservice对象,用于调用dao层
	@Autowired
	private EmplService emplService;
	@RequestMapping("right")
	public String right(){
		return "right";
	}
	//验证用户名是否唯一
	@ResponseBody
	@RequestMapping("check")
	public Integer check(String ename){
		List<Empl> list = emplService.check(ename);
		if(list != null && list.size() > 0){
			return 0;
		}
		return 1;
	}
	//插入数据
	@RequestMapping("insertEmpl")
	public String insertEmpl(Empl empl){
		emplService.insert(empl);
		return "right";
	}
	//查询员工
	@RequestMapping("findEmpl")
	public String findEmpl(Empl empl,Model model){
		List<Empl> list = emplService.findEmpl(empl);
		model.addAttribute("elist", list);
		return "find";
	}
	

}
