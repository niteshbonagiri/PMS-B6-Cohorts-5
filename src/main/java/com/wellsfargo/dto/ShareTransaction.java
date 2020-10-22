package com.wellsfargo.dto;

import java.time.LocalDateTime;

public class ShareTransaction {

	private int shareTransactionId;
	private int investorId;
	private String transactionType;
	private int transactionShareCount;
	private int companyId;
	private LocalDateTime dateTime;
	private int transactionAmount;
	public int getShareTransactionId() {
		return shareTransactionId;
	}
	public void setShareTransactionId(int shareTransactionId) {
		this.shareTransactionId = shareTransactionId;
	}
	public int getInvestorId() {
		return investorId;
	}
	public void setInvestorId(int investorId) {
		this.investorId = investorId;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public int getTransactionShareCount() {
		return transactionShareCount;
	}
	public void setTransactionShareCount(int transactionShareCount) {
		this.transactionShareCount = transactionShareCount;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	public int getTransactionAmount() {
		return transactionAmount;
	}
	public void setTransactionAmount(int transactionAmount) {
		this.transactionAmount = transactionAmount;
	}
	
	
}
