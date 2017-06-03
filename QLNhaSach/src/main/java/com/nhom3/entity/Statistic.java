package com.nhom3.entity;

public class Statistic {
	public long StatisticId;
	private String statisticName;
	private double statisticValue;	
	
	public Statistic() {
		
	}
	
	public Statistic(long statisticId, String statisticName, double statisticValue) {
		super();
		StatisticId = statisticId;
		this.statisticName = statisticName;
		this.statisticValue = statisticValue;
	}
	
	public long getStatisticId() {
		return StatisticId;
	}
	public void setStatisticId(long statisticId) {
		StatisticId = statisticId;
	}
	public String getStatisticName() {
		return statisticName;
	}
	public void setStatisticName(String statisticName) {
		this.statisticName = statisticName;
	}

	public double getStatisticValue() {
		return statisticValue;
	}

	public void setStatisticValue(double statisticValue) {
		this.statisticValue = statisticValue;
	}
}
