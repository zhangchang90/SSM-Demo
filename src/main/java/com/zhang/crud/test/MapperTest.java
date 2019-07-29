package com.zhang.crud.test;

import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhang.crud.bean.Department;
import com.zhang.crud.bean.Employee;
import com.zhang.crud.dao.DepartmentMapper;
import com.zhang.crud.dao.EmployeeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MapperTest {
	@Autowired
	public DepartmentMapper departmentMapper;
	@Autowired
	public EmployeeMapper employeeMapper;

	@Autowired
	public SqlSession sqlSession;

	@Test
	public void mapperTest() {
		// 测试添加部门信息
		/*
		 * departmentMapper.insertSelective(new Department(null, "测试部"));
		 * departmentMapper.insertSelective(new Department(null, "开发部"));
		 */
		// 添加员工
		/*
		 * employeeMapper.insertSelective(new Employee(null, "zhang4", "f",
		 * "zhang3@zhang.com", 1));
		 */

		// 批量添加员工，如果用for循环，时间较长，需要通过sqlSession来批量添加

		/*
		 * for (int i = 0; i < 100; i++) {
		 * 
		 * String uuid = UUID.randomUUID().toString().substring(0, 5);
		 * employeeMapper.insertSelective(new Employee(null, uuid + i, "f", uuid + i +
		 * "@zhang.com", 1)); System.out.println(sqlSession); }
		 */

		// 使用sqlSession批量添加

		
		  EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class); for (int
		  i = 0; i < 100; i++) {
		  
		  String uuid = UUID.randomUUID().toString().substring(0, 5);
		  mapper.insertSelective(new Employee(null, uuid + i, "f", uuid + i +
		  "@zhang.com", 2)); System.out.println(sqlSession); }
		 

		//测试sqlSession配置
		//System.out.println(sqlSession.getConfiguration().toString());
	}
}
