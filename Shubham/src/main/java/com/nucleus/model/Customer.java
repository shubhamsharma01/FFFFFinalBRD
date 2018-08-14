package com.nucleus.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="Customer_BRD")
public class Customer 
{
	@Id
	@NotNull
	private String customer_code;
	@NotNull
	@Length(min=3,max=20)
	private String customer_name;
	@NotNull
	@Length(min=3,max=20)
	private String customer_address1;
	@NotNull
	@Min(value=6)
	private int customer_pinCode;
	@NotNull
	@Email()
	private String email_address;
	@NotNull
	@Length(min=10,max=10)
	private String contact_number;

	private String create_date;
	private String created_by;
	private String modified_date;

	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_address1() {
		return customer_address1;
	}
	public void setCustomer_address1(String customer_address1) {
		this.customer_address1 = customer_address1;
	}
	public int getCustomer_pinCode() {
		return customer_pinCode;
	}
	public void setCustomer_pinCode(int customer_pinCode) {
		this.customer_pinCode = customer_pinCode;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}
	public String getContact_number() {
		return contact_number;
	}
	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getModified_date() {
		return modified_date;
	}
	public void setModified_date(String modified_date) {
		this.modified_date = modified_date;
	}

	@Override
	public String toString() {
		return "Customer [customer_code=" + customer_code + ", customer_name="
				+ customer_name + ", customer_address1=" + customer_address1
				+ ", customer_pinCode=" + customer_pinCode + ", email_address="
				+ email_address + ", contact_number=" + contact_number
				+ ", create_date=" + create_date + ", created_by=" + created_by
				+ ", modified_date=" + modified_date + "]";
	}
	
}
