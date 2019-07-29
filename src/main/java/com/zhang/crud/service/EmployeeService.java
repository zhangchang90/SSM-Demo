package com.zhang.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhang.crud.bean.Employee;
import com.zhang.crud.bean.EmployeeExample;
import com.zhang.crud.bean.EmployeeExample.Criteria;
import com.zhang.crud.dao.EmployeeMapper;
@Service
public class EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	public List<Employee> getAll() {
		EmployeeExample example = new EmployeeExample();
		example.setOrderByClause("emp_id asc");
		return employeeMapper.selectByExampleWithDept(example);
	}

	public void saveEmp(Employee employee) {
		employeeMapper.insertSelective(employee);
		
	}

	public boolean empCheck(String empName) {
		
		EmployeeExample example = new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmpNameEqualTo(empName);
		
		long countByExample = employeeMapper.countByExample(example );
		
		return countByExample==0 ;
	}

	public Employee getEmpById(Integer empId) {
		Employee employee = employeeMapper.selectByPrimaryKey(empId);
		return employee;
	}

	public void update(Employee employee) {
		employeeMapper.updateByPrimaryKeySelective(employee);
		
	}

	public void delete(Integer empId) {
		employeeMapper.deleteByPrimaryKey(empId);
		
	}

	public void delete(List del_ids) {
		EmployeeExample example = new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmpIdIn(del_ids);		
		employeeMapper.deleteByExample(example);
		
		
	}

}
