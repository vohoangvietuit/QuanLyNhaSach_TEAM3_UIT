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
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Categorys")
public class Category implements Serializable{
	
	private static final long serialVersionUID = -7988799579036225137L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long categoryId;
	
    @Column
    private String categoryName;
    
    @Column
	private String statusCategory;
    
    @OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
    @JoinColumn(name = "categoryId")
    private List<Book> listBook;
    
    
    public void setCategory(long id, String name){
    	this.categoryId = id;
    	this.categoryName = name;
    }
	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
    
	public List<Book> getListBook() {
		return listBook;
	}

	public String getStatusCategory() {
		return statusCategory;
	}
	public void setStatusCategory(String statusCategory) {
		this.statusCategory = statusCategory;
	}
	public void setListBook(List<Book> listBook) {
		this.listBook = listBook;
	}

	@Override
    public String toString() {
        return "Category{" +
                "id=" + categoryId +
                ", name=" + categoryName +
                '}';
    }
}
