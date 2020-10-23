package com.wf.dto;

import java.time.LocalDateTime;

public class Company {

	private int CompanyCode;
	private String CompanyTitle;
	private String operation;
	private int shareCount; 
	private float SharePrice;
	private String sector;
	private String currency; 
	private long turnover;
	private LocalDateTime dateTimeIPO;
	public int getCompanyCode() {
		return CompanyCode;
	}
	public void setCompanyCode(int companyCode) {
		CompanyCode = companyCode;
	}
	public String getCompanyTitle() {
		return CompanyTitle;
	}
	public void setCompanyTitle(String companyTitle) {
		CompanyTitle = companyTitle;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public int getShareCount() {
		return shareCount;
	}
	public void setShareCount(int shareCount) {
		this.shareCount = shareCount;
	}
	public float getSharePrice() {
		return SharePrice;
	}
	public void setSharePrice(float sharePrice) {
		SharePrice = sharePrice;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public long getTurnover() {
		return turnover;
	}
	public void setTurnover(long turnover) {
		this.turnover = turnover;
	}
	public LocalDateTime getDateTimeIPO() {
		return dateTimeIPO;
	}
	public void setDateTimeIPO(LocalDateTime dateTimeIPO) {
		this.dateTimeIPO = dateTimeIPO;
	}
	
	
}
