package com.jsp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bank {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String IFCcode;
	private long accountNumber;
	private String branchName;
	private double avilableBalance;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getAvilableBalance() {
		return avilableBalance;
	}
	public void setAvilableBalance(double avilableBalance) {
		this.avilableBalance = avilableBalance;
	}
	public String getIFCcode() {
		return IFCcode;
	}
	public void setIFCcode(String iFCcode) {
		IFCcode = iFCcode;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	
	public Bank(String iFCcode, long accountNumber, String branchName, double avilableBalance) {
		super();
		IFCcode = iFCcode;
		this.accountNumber = accountNumber;
		this.branchName = branchName;
		this.avilableBalance = avilableBalance;
	}
	public Bank() {
		super();
	}
	@Override
	public String toString() {
		return "Bank [id=" + id + ", IFCcode=" + IFCcode + ", accountNumber=" + accountNumber + ", branchName="
				+ branchName + ", avilableBalance=" + avilableBalance + "]";
	}
	
}
