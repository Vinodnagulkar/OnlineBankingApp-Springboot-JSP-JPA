package com.bank.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

/**
 * @author vinod.nagulkar
 *
 */
@Table
@Entity
@Component
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cid;
	private String firstName, lastName, address, aadharNo, panNo, email, mobile;
	private String  password;
	
	@OneToOne(mappedBy = "customer", cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private Account account;
	
	@OneToOne(mappedBy = "customer",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private LoanAccount loanAccount;

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", firstName=" + firstName + ", lastName=" + lastName + ", address=" + address
				+ ", aadharNo=" + aadharNo + ", panNo=" + panNo + ", email=" + email + ", mobile=" + mobile
				+ ", password=" + password + "]";
	}

	

}
