package com.wf.web.dto;

import java.time.LocalDateTime;

public class HistoricalRecordCompanyDTO {

	private int companyCode;
	private String stockPrice; 
	private LocalDateTime dateTime;
	
	
	public HistoricalRecordCompanyDTO(int companyCode, String stockPrice, LocalDateTime dateTime) {
		super();
		this.companyCode = companyCode;
		this.stockPrice = stockPrice;
		this.dateTime = dateTime;
	}
	
	public int getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}
	public String getStockPrice() {
		return stockPrice;
	}
	public void setStockPrice(String stockPrice) {
		this.stockPrice = stockPrice;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	
	
	
}
