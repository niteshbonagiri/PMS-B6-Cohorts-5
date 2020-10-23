package com.wf.dto;

public class InvestorShareDetails {

	private int investorID ;
	private int companyCode;
	private float currentPrice;
	private String commodities;
	private String currency;
	private int shareTransactionId;
	
	public int getInvestorID() {
		return investorID;
	}
	public void setInvestorID(int investorID) {
		this.investorID = investorID;
	}
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	public float getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(float currentPrice) {
		this.currentPrice = currentPrice;
	}
	public String getCommodities() {
		return commodities;
	}
	public void setCommodities(String commodities) {
		this.commodities = commodities;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public int getShareTransactionId() {
		return shareTransactionId;
	}
	public void setShareTransactionId(int shareTransactionId) {
		this.shareTransactionId = shareTransactionId;
	}
	
	
}
