package com.nucleus.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.controller.LoginController;
import com.nucleus.dao.CustomerDao;
import com.nucleus.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService
{
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	
	
	@Autowired
	CustomerDao customerDao;

	@Transactional
	public void saveRecord(Customer customer) 
	{
		customerDao.saveRecord(customer);
		
	}
	@Transactional
	public Customer getRecordByCustomerId(String customer_code) 
	{
		
		return customerDao.getRecordByCustomerId(customer_code);
	}
	@Transactional
	public void deleteRecordByCustomerCode(String customer_code) {
		customerDao.deleteRecordByCustomerCode(customer_code);
		
	}
	@Transactional
	public Customer update2(Customer customer) {
		
		return customerDao.update2(customer);
	}
	@Transactional
	public Customer update1(String customerid) {
		
		return customerDao.update1(customerid);
	}
	@Transactional
	public List<Customer> show() {
		// TODO Auto-generated method stub
		return customerDao.show();
	}
	public List<Customer> viewByName(String customer_name) {
		return customerDao.viewByName(customer_name);
	}

}
