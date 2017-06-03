package com.nhom3.entity;

public class Item {
	
	private Book book;
	private int quantity;
	private double totalMoney;
	
	public Item(){
		
	}
	
	public Item(Book book, int quantity) {
		this.book = book;
		this.quantity = quantity;
		totalMoney = book.getSalePrice() * quantity;	
	}

	public Book getBook() {
		return book;
	}
	
	public void setBook(Book book) {
		this.book = book;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
		this.sumMoney();
	}

	public double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
		this.sumMoney();
	}
	
	private void sumMoney()	{
		totalMoney = book.getSalePrice() * quantity;
	}

}
