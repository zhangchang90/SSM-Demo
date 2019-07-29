package com.zhang.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhang.crud.bean.Department;
import com.zhang.crud.bean.Msg;
import com.zhang.crud.service.DepartmentService;


@Controller

public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
	@RequestMapping("/depts")
	@ResponseBody
	public Msg getDepts() {
		
		List<Department> depts = departmentService.getDepts();
		return Msg.success().add("depts", depts);
		
	}
}
