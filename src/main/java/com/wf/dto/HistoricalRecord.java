package com.wf.dto;

import java.time.LocalDateTime;

public class HistoricalRecord {

	private int companyCode;
	private String stockPrice; 
	private float commoditiesPrice;
	private LocalDateTime dateTime;
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
	public float getCommoditiesPrice() {
		return commoditiesPrice;
	}
	public void setCommoditiesPrice(float commoditiesPrice) {
		this.commoditiesPrice = commoditiesPrice;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	
	
	
}
