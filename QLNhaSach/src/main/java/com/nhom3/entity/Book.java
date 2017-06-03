package com.nhom3.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Books")
public class Book implements Serializable {

	private static final long serialVersionUID = -7988799579036225137L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long bookId;

	@Column
	private String bookName;

	@ManyToOne
	@JoinColumn(name = "categoryId")
	private Category category;

	@OneToMany(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
	@JoinColumn(name = "BookId")
	private List<BillDetail> listBillDetail;

	@Column
	private String image;

	@Column
	private String author;

	@Column
	private String producer;

	@Column
	private int yearPublish;

	@Column
	private double salePrice;

	@Column
	private double buyPrice;
	
	@Column
	private String statusBook;	

	public Book() {

	}

	public Book(Category category) {
		this.category = category;
	}

	public void delteteCategory() {
		this.category = null;
	}

	public List<BillDetail> getListBillDetail() {
		return listBillDetail;
	}

	public void setListBillDetail(List<BillDetail> listBillDetail) {
		this.listBillDetail = listBillDetail;
	}

	public long getBookId() {
		return bookId;
	}

	public void setBookId(long bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public int getYearPublish() {
		return yearPublish;
	}

	public void setYearPublish(int yearPublish) {
		this.yearPublish = yearPublish;
	}

	public double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(double salePrice) {
		this.salePrice = salePrice;
	}

	public double getBuyPrice() {
		return buyPrice;
	}

	public void setBuyPrice(double buyPrice) {
		this.buyPrice = buyPrice;
	}

	public String getStatusBook() {
		return statusBook;
	}

	public void setStatusBook(String statusBook) {
		this.statusBook = statusBook;
	}
	
	@Override
	public String toString() {
		return "Book{" + "id=" + bookId + ", name='" + bookName + '}';
	}

}
