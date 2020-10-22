package com.wellsfargo.dto;

import java.time.LocalDateTime;

public class Commodities {

	private String commodityName;
	private String currency;
	private float price;
	private LocalDateTime dateTime;
	private int CommodityID;
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	public int getCommodityID() {
		return CommodityID;
	}
	public void setCommodityID(int commodityID) {
		CommodityID = commodityID;
	}
	
	
}
