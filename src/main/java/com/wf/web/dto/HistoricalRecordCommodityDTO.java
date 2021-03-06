package com.wf.web.dto;

import java.time.LocalDateTime;

public class HistoricalRecordCommodityDTO {

	private int commodityId;
	private String CommodityPrice; 
	private LocalDateTime dateTime;
		
	public HistoricalRecordCommodityDTO(int commodityId, String commodityPrice, LocalDateTime dateTime) {
		super();
		this.commodityId = commodityId;
		CommodityPrice = commodityPrice;
		this.dateTime = dateTime;
	}
	public int getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}
	public String getCommodityPrice() {
		return CommodityPrice;
	}
	public void setCommodityPrice(String commodityPrice) {
		CommodityPrice = commodityPrice;
	}
	public LocalDateTime getDateTime() {
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}
	
}
