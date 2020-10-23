package com.wf.dto;

import java.time.LocalDateTime;

public class UserWallet {

	private int investorID;
	private String currency;
	private LocalDateTime dateTime; 
	private int depositedAmount;
	private int UserWalletTransactionID;
	private int shareTransactionID; 
	private float balance;
	public int getInvestorID() {
		return investorID;
	}
	public void setInvestorID(int investorID) {
		this.investorID = investorID;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	public int getDepositedAmount() {
		return depositedAmount;
	}
	public void setDepositedAmount(int depositedAmount) {
		this.depositedAmount = depositedAmount;
	}
	public int getUserWalletTransactionID() {
		return UserWalletTransactionID;
	}
	public void setUserWalletTransactionID(int userWalletTransactionID) {
		UserWalletTransactionID = userWalletTransactionID;
	}
	public int getShareTransactionID() {
		return shareTransactionID;
	}
	public void setShareTransactionID(int shareTransactionID) {
		this.shareTransactionID = shareTransactionID;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	
	
	
}
