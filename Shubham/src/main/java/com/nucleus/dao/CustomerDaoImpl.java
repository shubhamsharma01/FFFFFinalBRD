package com.nucleus.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.controller.LoginController;
import com.nucleus.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao
{
	final static Logger LOGGER=Logger.getLogger(LoginController.class);
	
	@Autowired
    SessionFactory sessionFactory;
	@Transactional
	public void saveRecord(Customer customer) 
	{	
		Date date=new Date();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MM/yyyy");
		customer.setCreate_date(simpleDateFormat.format(date));
//		customer.setCreated_by();
		sessionFactory.getCurrentSession().persist(customer);	
	}	
	@Transactional
	public void deleteRecordByCustomerCode(String customer_code) 
	{
		System.out.println(customer_code);
		Customer customer=(Customer)sessionFactory.getCurrentSession().load(Customer.class,customer_code);
		if(customer!=null)
		{
			this.sessionFactory.getCurrentSession().delete(customer);
		}	
	}
	@Transactional
	public Customer getRecordByCustomerId(String customer_code) 
	{
		Customer customer1=(Customer)sessionFactory.getCurrentSession().get(Customer.class, customer_code);	
		return customer1 ;
	}
	//@SuppressWarnings("unchecked")
	@Transactional
	public List<Customer> show() 
	{		
		List<Customer> list1=sessionFactory.getCurrentSession().createQuery("from Customer").list();
		return list1;
	}
	@Transactional
	public Customer update2(Customer customer) 
	{
		sessionFactory.getCurrentSession().update(customer);
		return customer;
	
	}
	@Transactional
	public Customer update1(String customer_code) 
	{
		Customer customer3=(Customer)sessionFactory.getCurrentSession().get(Customer.class, customer_code);
		return customer3;
	}
	
//================================================================	
	@Transactional
	public List<Customer> viewByName(String customer_name) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Customer where customer_name=:name");
		query.setParameter("name", customer_name);
		List<Customer> customer=query.list();
		return customer;
	}

}